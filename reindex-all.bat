@echo off
REM -----
REM Created By Usman Shahab
REM Cron job in WAMP
php -c C:\wamp\bin\apache\apache2.4.9\bin\php.ini C:/wamp/www/magento2/bin/magento setup:static-content:deploy
php -c C:\wamp\bin\apache\apache2.4.9\bin\php.ini C:/wamp/www/magento2/bin/magento indexer:reindex
php -c C:\wamp\bin\apache\apache2.4.9\bin\php.ini C:/wamp/www/magento2/bin/magento cache:clean
php -c C:\wamp\bin\apache\apache2.4.9\bin\php.ini C:/wamp/www/magento2/bin/magento cache:flush
php -c C:\wamp\bin\apache\apache2.4.9\bin\php.ini C:/wamp/www/magento2/bin/magento customer:hash:upgrade
php -f C:\wamp\bin\apache\apache2.4.9\bin\php.ini C:/wamp/www/magento2/bin/magento cron:run
php -f C:\wamp\bin\apache\apache2.4.9\bin\php.ini C:/wamp/www/magento2/update/cron.php
php -f C:\wamp\bin\apache\apache2.4.9\bin\php.ini C:/wamp/www/magento2/bin/magento setup:cron:run