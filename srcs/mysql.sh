# get mysql
export DEBIAN_FRONTEND="noninteractive"

apt-get update && apt-get upgrade
echo "mysql-apt-config mysql-apt-config/select-server select mysql-5.7" | debconf-set-selections
wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb
dpkg -i mysql-apt-config_0.8.13-1_all.deb
apt update
apt install mysql-server -y
rm mysql-apt-config_0.8.14-1_all.deb
