# install phpmyadmin
mkdir /usr/share/phpmyadmin
wget -P /usr/share/phpmyadmin/ https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.zip
unzip /usr/share/phpmyadmin/phpMyAdmin-4.9.0.1-english.zip -d /usr/share/phpmyadmin/
mv /usr/share/phpmyadmin/phpMyAdmin-4.9.0.1-english/* /usr/share/phpmyadmin
rm /usr/share/phpmyadmin/phpMyAdmin-4.9.0.1-english.zip
rm -rf /usr/share/phpmyadmin/phpMyAdmin-4.9.0.1-english
mkdir /usr/share/phpmyadmin/tmp
chmod 777 /usr/share/phpmyadmin/tmp
rm -rf /usr/share/phpmyadmin/config.sample.inc.php
mv config.inc.php /usr/share/phpmyadmin/
mysql < /usr/share/phpmyadmin/sql/create_tables.sql
echo "GRANT SELECT, INSERT, UPDATE, DELETE ON phpmyadmin.* TO 'ader'@'localhost' IDENTIFIED BY 'redaredaff';" | mysql
rm -rf /etc/nginx/sites-available/default
mv default /etc/nginx/sites-available/
mv /usr/share/phpmyadmin/ /var/www/html/