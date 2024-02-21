#!/bin/bash

echo "Executando o cron..."

crontab /etc/cron.d/cron_job

pkill -f cron

systemctl start cron.service

echo "Verificarndo se o cron está ativo..."

systemctl status cron.service 

tail -f /dev/null
