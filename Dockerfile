# Sử dụng image Python 3.11
FROM python:3.11-bullseye

# Thiết lập biến môi trường
ENV PYTHONUNBUFFERED 1

# Thiết lập thư mục làm việc
WORKDIR /django

# Sao chép file requirements.txt vào container
COPY requirements.txt /django/

# Cài đặt các gói phụ thuộc
RUN pip install -r requirements.txt

# Sao chép toàn bộ mã nguồn vào thư mục làm việc
COPY . /django/

# Expose port 8000
EXPOSE 8000

# Chạy server Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
