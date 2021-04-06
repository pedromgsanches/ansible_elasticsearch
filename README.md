#### IMPORTANTE ########################################### 
## 1 - Carregar ansible config: imHome.sh
## 2 - Variáveis e passwords estão em elasticsearch/var/main.yml
## 3 - Decidi não encriptar as passwords, mas poderão ser encriptadas num ficheiro aparte
## 4 - Penúltima task (systemD) ainda não funciona rootless, o que invalida a execução do setup-passwords:
	- correr o playbook elasticsearch.yml com --skip-tags referente às configurações do systemd e setup-passwords
	- iniciar os serviços nos servidores
	- executar o playbook elasticsearch.yml com --tags de setup-passwords
	- iniciar os serviços nos nós que possam estar ainda em baixo

## 5 - testar acessos, as passwords foram geradas automaticamente em setup-passwords e estão em ~/secure/es_<ClusterName>_<ServerName>.txt

