Recentemente um rapaz me contratou para realizar alguns ajustes no sistema dele..

e queria que de alguma forma eu ocultasse os logs que apareciam com o usuário dele.

Segue abaixo a receita da gambiarra encontrada... 

Obs:. Na pratica os logs não iram ser ocultados, e sim deletados.

# 1° - Baixe o arquivo dentro da pasta /root

cd /root

wget https://github.com/theuscarvalho/limpalogmkauth/archive/master.zip

# 2° - Descompacte o arquivo dentro da pasta

unzip master.zip

# 3° - Copie o arquivo limpalogs.sh para dentro da pasta root

cp limpalogmkauth-master/limpalogs.sh /root/limpalogs.sh

# 4° - Altere o nome 'nome' para o usuário pretendido.

nano limpalogs.sh

# 5° - Permissões de execução

chmod 777 -R limpalogs.sh

# 6 - Cria rotina no cron. (Limpa os logs do usuário de minuto em minuto)

echo "*/1 * * * * root sh /root/limpalogs.sh" >> /etc/crontab

# 7 - E para finalizar, reboot no cron para iniciar a operação do script.

/etc/init.d/cron restart

Boa sorte!! 

Qualquer duvida estou a disposição.

Whatsapp: (79)99998-9976
