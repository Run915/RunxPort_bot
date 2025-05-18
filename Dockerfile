# 使用 PHP 官方映像檔
FROM php:8.2-cli

# 設定工作目錄
WORKDIR /app

# 複製你 repo 的所有檔案進容器中
COPY . .

# 安裝 curl 套件（Telegram bot 可能會需要）
RUN apt-get update && apt-get install -y curl

# 啟動指令，請確認 bot.php 是你的主程式
CMD ["php", "bot.php"]
