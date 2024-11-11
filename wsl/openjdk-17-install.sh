WORK_DIR="/opt"
ARCHIVE_ABSOLUTE_PATH="/tmp/openjdk-17.0.2.tar.gz"
DOWNLOAD_URL="https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz"
JAVA_HOME_ABSOLUTE_PATH="$WORK_DIR/jdk-17.0.2"

sudo apt update -y
sudo apt upgrade -y

sudo apt install curl -y

sudo curl -o $ARCHIVE_ABSOLUTE_PATH $DOWNLOAD_URL

sudo tar -xzf $ARCHIVE_ABSOLUTE_PATH -C $WORK_DIR

sudo rm $ARCHIVE_ABSOLUTE_PATH

echo '# JAVA VARIABLES' >> ~/.bashrc
echo JAVA_HOME=$JAVA_HOME_ABSOLUTE_PATH >> ~/.bashrc
echo 'PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc

echo export JAVA_HOME=$JAVA_HOME_ABSOLUTE_PATH >> ~/.bashrc
echo '# JAVA VARIABLES END' >> ~/.bashrc
echo '' >> ~/.bashrc

echo $JAVA_HOME_ABSOLUTE_PATH/bin/java

sudo unlink /usr/bin/java
sudo ln -s $JAVA_HOME_ABSOLUTE_PATH/bin/java /usr/bin/java

java --version