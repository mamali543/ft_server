# install php
cd /usr/share/
mkdir phpmyadmin
cd phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.zip
unzip phpMyAdmin-4.9.0.1-english.zip
cd phpMyAdmin-4.9.0.1-english/
mv * /usr/share/phpmyadmin
cd ..
rm phpMyAdmin-4.9.0.1-english.zip
rm -rf phpMyAdmin-4.9.0.1-english/
mkdir tmp
chmod 777 tmp
mv config.sample.inc.php config.inc.php
#vim config.inc.php