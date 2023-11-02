#!/bin/bash

#1
dir1="/usr/share/assistant/ast-id/logs"
size1=$(du -sh "$dir1" | awk '{print $1}')
count1=$(find "$dir1" -type f | wc -l)
#2
dir2="/usr/share/assistant/ast-trs/bin/log"
size2=$(du -sh "$dir2" | awk '{print $1}')
count2=$(find "$dir2" -type f | wc -l)
#3
dir3="/usr/share/assistant/ast-auth/logs"
size3=$(du -sh "$dir3" | awk '{print $1}')
count3=$(find "$dir3" -type f | wc -l)
#4
dir4="/usr/share/assistant/ast-office/logs"
size4=$(du -sh "$dir4" | awk '{print $1}')
count4=$(find "$dir4" -type f | wc -l)
#5
dir5="/usr/share/assistant/ast-log/logs"
size5=$(du -sh "$dir5" | awk '{print $1}')
count5=$(find "$dir5" -type f | wc -l)
#6
dir6="/usr/share/assistant/ast-inventory/inventory-log"
size6=$(du -sh "$dir6" | awk '{print $1}')
count6=$(find "$dir6" -type f | wc -l)
#7
dir7="/usr/share/assistant/ast-notify/logs"
size7=$(du -sh "$dir7" | awk '{print $1}')
count7=$(find "$dir7" -type f | wc -l)
#8
dir8="/usr/share/assistant/ast-monitor/logs"
size8=$(du -sh "$dir8" | awk '{print $1}')
count8=$(find "$dir8" -type f | wc -l)
#9
dir9="/usr/share/assistant/ast-idstat/logs"
size9=$(du -sh "$dir9" | awk '{print $1}')
count9=$(find "$dir9" -type f | wc -l)
#10
dir10="/usr/share/assistant/ast-webapidata/logs"
size10=$(du -sh "$dir10" | awk '{print $1}')
count10=$(find "$dir10" -type f | wc -l)
#11
dir11="/usr/share/assistant/ast-webapi/logs"
size11=$(du -sh "$dir11" | awk '{print $1}')
count11=$(find "$dir11" -type f | wc -l)
#12
dir12="/usr/share/assistant/ast-worker/logs"
size12=$(du -sh "$dir12" | awk '{print $1}')
count12=$(find "$dir12" -type f | wc -l)

echo "==================================="
echo "СПИСОК ЛОГОВ"
echo "==================================="
#1
echo "id-сервер - /usr/share/assistant/ast-id/logs"
echo "Размер:$size1"
echo "Количество файлов:$count1"
echo "-----------------------------------"
#2
echo "Траспортный-сервер - /usr/share/assistant/ast-trs/bin/logs"
echo "Размер:$size2"
echo "Количество файлов:$count2"
echo "-----------------------------------"
#3
echo "Сервер авторизации - /usr/share/assistant/ast-auth/logs"
echo "Размер:$size3"
echo "Количество файлов:$count3"
echo "-----------------------------------"
#4
echo "Личный кабинет - /usr/share/assistant/ast-office/logs"
echo "Размер:$size4"
echo "Количество файлов:$count4"
echo "-----------------------------------"
#5
echo "Сервер авторизации - /usr/share/assistant/ast-auth/logs"
echo "Размер:$size5"
echo "Количество файлов:$count5"
echo "-----------------------------------"
#6
echo "Сервер инвентаризации - /usr/share/assistant/ast-inventory/inventory-log"
echo "Размер:$size6"
echo "Количество файлов:$count6"
echo "-----------------------------------"
#7
echo "Подсистема уведомлений - /usr/share/assistant/ast-notify/logs"
echo "Размер:$size7"
echo "Количество файлов:$count7"
echo "-----------------------------------"
#8
echo "Подсистема самотестирования - /usr/share/assistant/ast-monitor/logs"
echo "Размер:$size8"
echo "Количество файлов:$count8"
echo "-----------------------------------"
#9
echo "id-сервер статистики - /usr/share/assistant/ast-idstat/logs"
echo "Размер:$size9"
echo "Количество файлов:$count9"
echo "-----------------------------------"
#10
echo "Модуль получения данных - /usr/share/assistant/ast-webapidata/logs"
echo "Размер:$size10"
echo "Количество файлов:$count10"
echo "-----------------------------------"
#11
echo "Модуль регистрации событий - /usr/share/assistant/ast-webapi/logs"
echo "Размер:$size11"
echo "Количество файлов:$count11"
echo "-----------------------------------"
#12
echo "Модуль обработки данных - /usr/share/assistant/ast-worker/logs"
echo "Размер:$size12"
echo "Количество файлов:$count12"
echo "-----------------------------------"

# Определяем функцию для отобржения меню
show_menu() {
echo "МЕНЮ - Какие логи удаляем?"
echo "0 - Все логи"
echo "1 - id-сервер"
echo "2 - Траспортный сервер"
echo "3 - Сервер авторизации"
echo "4 - Личный кабинет"
echo "5 - Сервер протоколирования"
echo "6 - Сервер инвентаризации"
echo "7 - Подсистема уведомлений"
echo "8 - Подсистема самотестирования"
echo "9 - id-сервер статистики"
echo "10 - Модуль получения данных"
echo "11 - Модуль регистрации событий"
echo "12 - Модуль обработки данных"
echo "00 - Выход"
}
# Определяем функции для выполения выбранной опции
perform_option() {
case $1 in
   0)
   echo "Все логи удалены"
   find /usr/share/assistant/ast-id/logs -type f -delete
   find /usr/share/assistant/ast-trs/bin/log -type f -delete
   find /usr/share/assistant/ast-auth/logs -type f -delete
   find /usr/share/assistant/ast-office/logs -type f -delete
   find /usr/share/assistant/ast-log/logs -type f -delete
   find /usr/share/assistant/ast-inventory/inventory-log -type f -delete
   find /usr/share/assistant/ast-notify/logs -type f -delete
   find /usr/share/assistant/ast-monitor/logs -type f -delete
   find /usr/share/assistant/ast-idstat/logs -type f -delete
   find /usr/share/assistant/ast-webapidata/logs -type f -delete 
   find /usr/share/assistant/ast-webapi/logs -type f -delete
   find /usr/share/assistant/ast-worker/logs -type f -delete
   ;;
   1)
   echo "Логи id-сервер удалены"
   find /usr/share/assistant/ast-id/logs -type f -delete
   ;;
   2)
   echo "Логи транспортный сервер удалены"
   find /usr/share/assistant/ast-trs/bin/log -type f -delete
   ;;
   3)
   echo "Логи сервер авторизации удалены"
   find /usr/share/assistant/ast-auth/logs -type f -delete
   ;;
   4)
   echo "Логи личный кабинет удалены"
   find /usr/share/assistant/ast-office/logs -type f -delete
   ;;
   5)
   echo "Логи сервер протоколирования удалены"
   find /usr/share/assistant/ast-log/logs -type f -delete
   ;;
   6)
   echo "Логи сервер инвентаризации удалены"
   find /usr/share/assistant/ast-inventory/inventory-log -type f -delete
   ;;
   7)
   echo "Логи подсистема уведомлений удалены"
   find /usr/share/assistant/ast-notify/logs -type f -delete
   ;;
   8)
   echo "Логи подсистема самотеcтирования"
   find /usr/share/assistant/ast-monitor/logs -type f -delete
   ;;
   9)
   echo "Логи id-сервер статистики"
   find /usr/share/assistant/ast-idstat/logs -type f -delete
   ;;
   10)
   echo "Логи модуль получения данных удалены"
   find /usr/share/assistant/ast-webapidata/logs -type f -delete
   ;;
   11)
   echo "Логи модуль регистрации событий удалены"
   find /usr/share/assistant/ast-webapi/logs -type f -delete
   ;;
   12)
   echo "Логи модуль обработки данных удалены"
   find /usr/share/assistant/ast-worker/logs -type f -delete
   ;;
   00)
   exit 0
   ;;
   *)
   echo "Неверный выбор"
   ;;
esac
}

# Главный цикл программы
while true; do
   show_menu
   echo -n "Введите номер:"
   read option
   perform_option $option
   echo
done
