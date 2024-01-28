WORK_DIR="/opt"
GRAALVM_ARCHIVE="$WORK_DIR/graalvm-jdk.tar.gz"

GRAALVM_DOWNLOAD_URL="https://download.oracle.com/graalvm/21/latest/graalvm-jdk-21_linux-x64_bin.tar.gz"

sudo apt update -y
sudo apt upgrade -y

sudo apt install libfl-dev zlib1g-dev curl -y

sudo curl -o $GRAALVM_ARCHIVE $GRAALVM_DOWNLOAD_URL

sudo tar -xzf $GRAALVM_ARCHIVE -C $WORK_DIR

sudo rm $GRAALVM_ARCHIVE

GRAALVM_HOME=$(find $WORK_DIR -type d -name 'graalvm-jdk-21*' -printf "%p" -quit)

echo JAVA_HOME=$GRAALVM_HOME >> ~/.bashrc
echo 'PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc