#!/bin/bash

PROJECT_DIR="$HOME/Reafactoring-Code/Task-Manager/json"
LOG_DIR="$HOME/Reafactoring-Code/Task-Manager/logs"
APP_NAME="task-manager"

export PATH=$HOME/.npm-global/bin:$PATH

cd "$PROJECT_DIR" || { echo "Não foi possível acessar $PROJECT_DIR"; exit 1; }

mkdir -p "$LOG_DIR"

if pm2 list | grep -q "$APP_NAME"; then
    echo "============================================================================================================="
    echo "$(date) - Reiniciando $APP_NAME..."
    echo "============================================================================================================="
    pm2 restart "$APP_NAME" --update-env
else
    echo "============================================================================================================="
    echo "$(date) - Iniciando $APP_NAME..."
    echo "============================================================================================================="
    pm2 start server.js \
        --name "$APP_NAME" \
        --ignore-watch="node_modules" \
        --log-date-format="YYYY-MM-DD HH:mm:ss" \
        --output "$LOG_DIR/out.log" \
        --error "$LOG_DIR/error.log" \
        --merge-logs \
        --update-env
fi

pm2 save

echo "============================================================================================================="
echo "$(date) - Servidor $APP_NAME rodando e configurado para reinício automático no boot."
echo "============================================================================================================="