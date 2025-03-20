#!/bin/bash

LOG_FILE="report_template_task.log"

PID=$$

echo "[$PID] $(date '+%Y-%m-%d %H:%M:%S') СКРИПТ ЗАПУЩЕН" >> "$LOG_FILE"

SLEEP_TIME=$((RANDOM % 1771 + 30))

sleep "$SLEEP_TIME"

MINUTES=$((SLEEP_TIME / 60))

echo "[$PID] $(date '+%Y-%m-%d %H:%M:%S') СКРИПТ ЗАВЕРШИЛСЯ, РАБОТАЛ $MINUTES МИНУТ" >> "$LOG_FILE"

