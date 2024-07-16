#!/bin/bash
cd /Users/mac/Documents/softwares/websites/crypto_clones/Investment-System/core
php artisan schedule:run >> /tmp/cron_test.log 2>&1

