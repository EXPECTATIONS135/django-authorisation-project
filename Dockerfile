FROM python:3.14-alpine

WORKDIR /app

# Копіюємо requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо весь проект
COPY . .

# Запуск через manage.py
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
