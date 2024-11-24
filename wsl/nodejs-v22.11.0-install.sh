WORK_DIR="/opt"
NODEJS_VERSION="v22.11.0"
NODEJS_DOWNLOAD_URL="https://nodejs.org/dist/$NODEJS_VERSION/node-$NODEJS_VERSION-linux-x64.tar.xz"
NODEJS_ARCHIVE="/tmp/nodejs-$NODEJS_VERSION.tar.xz"
NODEJS_HOME="$WORK_DIR/node-$NODEJS_VERSION-linux-x64"

echo '$NODEJS_DOWNLOAD_URL' $NODEJS_DOWNLOAD_URL
echo '$NODEJS_ARCHIVE' $NODEJS_ARCHIVE
echo '$NODEJS_HOME' $NODEJS_HOME

sudo apt update -y
sudo apt upgrade -y

sudo apt install curl tar xz-utils  -y

sudo curl -o $NODEJS_ARCHIVE $NODEJS_DOWNLOAD_URL

sudo tar -xf $NODEJS_ARCHIVE -C $WORK_DIR

sudo rm $NODEJS_ARCHIVE

#echo '# NODEJS VARIABLES' >> ~/.bashrc
#echo NODEJS_HOME=$NODEJS_HOME >> ~/.bashrc
#echo 'PATH="$NODEJS_HOME/bin:$PATH"' >> ~/.bashrc
#echo '# NODEJS VARIABLES END' >> ~/.bashrc
#echo '' >> ~/.bashrc

echo $NODEJS_HOME/bin/node
echo $NODEJS_HOME/bin/npm

sudo unlink /usr/bin/node
sudo ln -s $NODEJS_HOME/bin/node /usr/bin/node

sudo unlink /usr/bin/npm
sudo ln -s $NODEJS_HOME/bin/npm /usr/bin/npm

node -v
npm -v