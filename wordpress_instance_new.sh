NAME=$1
MYSQLPWD=$2
HOME=$(pwd)
cd /var/www/html/
cp /dpkg_archive/wordpress/core/latest.zip .
unzip latest.zip
mv wordpress $NAME
chown -R www-data:www-data $NAME
rm -rf latest.zip
cd $HOME
mysql -uroot -p$MYSQLPWD -e "CREATE DATABASE IF NOT EXISTS $NAME"
echo done
