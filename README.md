# magento2-reindexing
Download this source file

Or

Create a new file with ".bat" extension

Copy all code below in paste it into newly created .bat file.

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

==============NOTE===================

In my case,i have installed wamp server and location of my "php.ini" file is "C:\wamp\bin\apache\apache2.4.9\bin\php.ini" and magento installation directory is "C:/wamp/www/" with name of solution is "magento2", so change it accordingly.

Save the file and double click on it/Open this file...which shows a command-line interface.No input is required from your side
(Be patience! It may take some time to complete)
Hurraahh! You re-indexed successfully
