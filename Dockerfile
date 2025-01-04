FROM python:3.10-slim

WORKDIR /app

# Sao chép requirements.txt vào container
COPY requirements.txt .

# Cài đặt các thư viện cần thiết
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Chạy ứng dụng khi container khởi động
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8099"]