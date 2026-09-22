دليل سلمية - نسخة ما قبل الربط النهائي

1) ارفع محتويات هذا المجلد إلى الاستضافة.
2) أنشئ مشروع Supabase.
3) نفّذ database.sql داخل SQL Editor.
4) انسخ supabase-config.example.js إلى supabase-config.js وضع URL و anon/publishable key.
5) لا تضع service_role key داخل ملفات الموقع.
6) بعد إعطاء بيانات Supabase العامة (URL + anon/publishable key) يمكن ربط index/admin/shop فعلياً بالقاعدة والمصادقة.

حالياً الموقع يحتفظ ببيانات تجريبية محلياً إذا لم يتم الربط، حتى لا تتعطل المعاينة.
