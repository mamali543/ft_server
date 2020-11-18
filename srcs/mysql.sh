# get mysql
wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb
dpkg -i mysql-apt-config_0.8.13-1_all.deb
apt update
apt install mysql-server -y
#security changes on Database server
systemctl restart mysql
mysql_secure_installation
# connect to the mysql database
mysql -u root -p
