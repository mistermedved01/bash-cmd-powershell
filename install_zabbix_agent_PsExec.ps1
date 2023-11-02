## Подойдет для единичной установки на ПК без домена
$ip = Read-Host "Введите IP-адрес"
$login = Read-Host "Введите логин"
$pass = Read-Host "Введите пароль"
 
## Подключение сетевого диска
.\PsExec.exe -i \\$ip -u $login -p $pass -s cmd.exe /c "net use X: \\share\Users\Public /user:user user" 
## Копирование дистрибутива
.\PsExec.exe -i \\$ip -u $login -p $pass -s cmd.exe /c "xcopy X:\Zabbix_agent_6.4.7_i386\*.* C:\Zabbix_agent_6.4.7_i386\*.* /e"
## Удаление сетевого диска
.\PsExec.exe -i \\$ip -u $login -p $pass -s cmd.exe /c "net use X: /delete"
## Установка Zabbix Agent
.\PsExec.exe -i \\$ip -u $login -p $pass -s cmd.exe /c "C:\Zabbix_agent_6.4.7_i386\bin\zabbix_agentd.exe" -c "C:\Zabbix_agent_6.4.7_i386\conf\zabbix_agentd.conf" -i
## Старт Zabbix Agent
.\PsExec.exe -i \\$ip -u $login -p $pass -s cmd.exe /c "C:\Zabbix_agent_6.4.7_i386\bin\zabbix_agentd.exe" -s
## Открытие порта 10500 для Zabbix Agent
.\PsExec.exe -i \\$ip -u $login -p $pass -s cmd.exe /c "netsh advfirewall firewall add rule name=Zabbix_agent protocol=TCP localport=10050 action=allow dir=IN remoteip=192.168.1.1"



 



