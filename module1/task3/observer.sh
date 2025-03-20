#!/bin/bash

CONFIG_FILE="scripts.conf"
LOG_FILE="observer.log"

while IFS= read -r script
do
    if [[ -z "$script" ]]; then
        continue
    fi

    if [[ ! -f "$script" ]]; then
        echo "$script не найдено" >> "$LOG_FILE"
        continue
    fi

    PROCESS_COUNT=$(ps aux | grep "$script" | grep -v grep | wc -l)

    if [[ "$PROCESS_COUNT" -eq 0 ]]; then
        nohup bash "$script" > /dev/null 2>&1 &
	echo "$script перезапущен" >> "$LOG_FILE"
    fi

done < "$CONFIG_FILE"
