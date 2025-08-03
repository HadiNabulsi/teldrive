FROM ghcr.io/tgdrive/teldrive

# نسخ ملف الإعدادات إلى داخل الحاوية
COPY config.toml /config.toml

# فتح المنفذ
EXPOSE 8080

# تشغيل Teldrive باستخدام ملف الإعدادات
CMD ["run", "--config", "/config.toml"]