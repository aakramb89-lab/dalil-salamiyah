create table if not exists public.salamiyah_data (
  id text primary key,
  value jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.salamiyah_data enable row level security;
grant select, insert, update on public.salamiyah_data to anon, authenticated;
drop policy if exists "salamiyah_public_read" on public.salamiyah_data;
drop policy if exists "salamiyah_public_insert" on public.salamiyah_data;
drop policy if exists "salamiyah_public_update" on public.salamiyah_data;
create policy "salamiyah_public_read" on public.salamiyah_data for select to anon, authenticated using (true);
create policy "salamiyah_public_insert" on public.salamiyah_data for insert to anon, authenticated with check (id in ('salamiyah_shops','salamiyah_categories','salamiyah_site_settings'));
create policy "salamiyah_public_update" on public.salamiyah_data for update to anon, authenticated using (id in ('salamiyah_shops','salamiyah_categories','salamiyah_site_settings')) with check (id in ('salamiyah_shops','salamiyah_categories','salamiyah_site_settings'));
