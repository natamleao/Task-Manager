#!/bin/bash

APP_NAME="task-manager"
LOG_DIR="$HOME/Reafactoring-Code/Task-Manager/logs"

mkdir -p "$LOG_DIR"

export PATH=$HOME/.npm-global/bin:$PATH

if pm2 list | grep -q "$APP_NAME"; then
    pm2 stop "$APP_NAME"
    pm2 delete "$APP_NAME"
    pm2 save
    echo "============================================================================================================="
    echo "$(date) - $APP_NAME parado e removido do PM2." >> "$LOG_DIR/stop.log"
    echo "============================================================================================================="
else
    echo "============================================================================================================="
    echo "$(date) - Nenhum processo $APP_NAME encontrado." >> "$LOG_DIR/stop.log"
    echo "============================================================================================================="
fi