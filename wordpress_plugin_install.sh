PLUGIN=$1
VERSION=$2
PROJECT=$3
TARGET=/var/www/html/$PROJECT/wp-content/plugins/
SOURCE=/dpkg_archive/wordpress/plugins/$PLUGIN/$VERSION/$PLUGIN

cp -R $SOURCE $TARGET
chown -R www-data:www-data $TARGET
