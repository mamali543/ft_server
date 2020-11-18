#install php
#install the prerequisites
apt install lsb-release apt-transport-https ca-certificates wget -y
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
apt install php7.4-{fpm,cli,common,gd,mbstring,mysql,xml,xmlrpc,imagick,zip} -y
service php7.4-fpm stop
service php7.4-fpm start
apt update
