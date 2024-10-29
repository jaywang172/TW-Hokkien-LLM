# 使用基礎映像檔
FROM python:3.8-slim

# 設定工作目錄
WORKDIR /app

# 複製專案檔案到容器中
COPY . .

# 安裝所需的 Python 套件
RUN pip install --no-cache-dir -r requirements.txt

# 暴露埠號，Cloud Run 預設使用 8080 埠
EXPOSE 8080

# 啟動指令，假設 main.py 是你的應用程式入口文件
CMD ["python", "main.py"]
