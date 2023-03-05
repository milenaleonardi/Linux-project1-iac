# Script para automatizar criação de usuários, grupos e diretórios no terminal Linux Ubuntu/Debian
#!/bin/bash

echo "Criação de diretórios"


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação de grupos"


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de usuários"


useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joão -m -c "João" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastian -m -c "Sebastian" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado."
