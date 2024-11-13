# Используем официальный образ Node.js
FROM node:18

# Создаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json (если есть) в контейнер
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем оставшиеся файлы в контейнер
COPY . .

# Открываем порт 3000
EXPOSE 3000

# Запускаем сервер Node.js
CMD ["node", "server.js"]
