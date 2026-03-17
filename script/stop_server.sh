#!/bin/bash

APP_NAME="task-manager"
LOG_DIR="$HOME/Reafactoring-Code/Task-Manager/logs"

# Garante logs
mkdir -p "$LOG_DIR"

# Garante que o PATH tenha o PM2 instalado globalmente
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