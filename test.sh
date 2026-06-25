#!/bin/bash 
set -e 
echo "Запуск тестов..." 
if [ ! -f index.html ]; then 
  echo "ОШИБКА: index.html не найден!" 
  exit 1 
fi 
if ! grep -q "Приложение работает!" index.html; then 
  echo "ОШИБКА: содержимое не совпадает!" 
  exit 1 
fi 
echo "Все тесты пройдены успешно." 
