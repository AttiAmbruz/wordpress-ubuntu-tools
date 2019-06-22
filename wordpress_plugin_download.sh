PLUGIN=$1
VERSION=$2
HOME=/dpkg_archive/wordpress/plugins

mkdir -p $HOME/$PLUGIN
mkdir -p $HOME/$PLUGIN/$VERSION
cd $HOME/$PLUGIN/$VERSION
echo Downloading
wget https://downloads.wordpress.org/plugin/$PLUGIN.$VERSION.zip
unzip $HOME/$PLUGIN/$VERSION/$PLUGIN.$VERSION.zip
rm -rf $HOME/$PLUGIN/$VERSION/$PLUGIN.$VERSION.zip
cd ..
rm -rf latest
ln -s $VERSION latest
chown -R www-data:www-data $HOME/$PLUGIN
