WORK_DIR="/opt"
NODEJS_VERSION="v20.11.0"
NODEJS_DOWNLOAD_URL="https://nodejs.org/dist/$NODEJS_VERSION/node-$NODEJS_VERSION-linux-x64.tar.xz"
NODEJS_ARCHIVE="$WORK_DIR/nodejs-$NODEJS_VERSION.tar.xz"
NODEJS_HOME="$WORK_DIR/node-$NODEJS_VERSION-linux-x64"

sudo apt update -y
sudo apt upgrade -y

sudo apt install curl -y

sudo curl -o $NODEJS_ARCHIVE $NODEJS_DOWNLOAD_URL

sudo tar -xf $NODEJS_ARCHIVE -C $WORK_DIR

sudo rm $NODEJS_ARCHIVE

echo '# NODEJS VARIABLES' >> ~/.bashrc
echo NODEJS_HOME=$NODEJS_HOME >> ~/.bashrc
echo 'PATH="$NODEJS_HOME/bin:$PATH"' >> ~/.bashrc
echo '# NODEJS VARIABLES END' >> ~/.bashrc
echo '' >> ~/.bashrc