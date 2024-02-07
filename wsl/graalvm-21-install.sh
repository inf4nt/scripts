WORK_DIR="/opt"
GRAALVM_VERSION="21"
GRAALVM_ARCHIVE="$WORK_DIR/graalvm-jdk-$GRAALVM_VERSION.tar.gz"

GRAALVM_DOWNLOAD_URL="https://download.oracle.com/graalvm/$GRAALVM_VERSION/latest/graalvm-jdk-${GRAALVM_VERSION}_linux-x64_bin.tar.gz"

sudo apt update -y
sudo apt upgrade -y

sudo apt install libfl-dev zlib1g-dev curl -y

sudo curl -o $GRAALVM_ARCHIVE $GRAALVM_DOWNLOAD_URL

sudo tar -xzf $GRAALVM_ARCHIVE -C $WORK_DIR

sudo rm $GRAALVM_ARCHIVE

GRAALVM_HOME=$(find $WORK_DIR -type d -name "graalvm-jdk-$GRAALVM_VERSION*" -printf "%p" -quit)

echo '# JAVA VARIABLES' >> ~/.bashrc
echo JAVA_HOME=$GRAALVM_HOME >> ~/.bashrc
echo 'PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc

echo export JAVA_HOME=$GRAALVM_HOME >> ~/.bashrc
echo '# JAVA VARIABLES END' >> ~/.bashrc
echo '' >> ~/.bashrc