#!/bin/bash

echo "Diretórios"

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Grupos"

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Usuários"

sudo useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd carlos123) -G GRP_ADM
sudo useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd maria123) -G GRP_ADM
sudo useradd joao -c "joao" -m -s /bin/bash -p $(openssl passwd joao123) -G GRP_ADM

sudo useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd debora123) -G GRP_VEN
sudo useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd sebastiana123) -G GRP_VEN
sudo useradd roberto -c "Roberto " -m -s /bin/bash -p $(openssl passwd roberto123) -G GRP_VEN

sudo useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd josefina123) -G GRP_SEC
sudo useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd amanda123) -G GRP_SEC
sudo useradd rogerio -c "Rogerio " -m -s /bin/bash -p $(openssl passwd rogerio123) -G GRP_SEC

echo "Permissões dos diretórios"


sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 770 /ven
sudo chmod 770 /sec
sudo chmod 770 /adm
sudo chmod 777 /publico