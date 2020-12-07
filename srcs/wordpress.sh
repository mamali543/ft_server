echo "GRANT ALL ON wordpress_db.* TO 'ader'@'localhost' IDENTIFIED BY 'redaredaff';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
apt update
apt install php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y
service nginx restart
cd /var/www/html/
curl -O https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm latest.tar.gz
chown -R www-data:www-data /var/www/html/wordpress
find /var/www/html/wordpress/ -type d -exec chmod 750 {} \;
find /var/www/html/wordpress/ -type f -exec chmod 640 {} \;
rm /var/www/html/wordpress/wp-config-sample.php
cd
cd ..
mv wp-config.php /var/www/html/wordpress/