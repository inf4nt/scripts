sudo apt update -y
sudo apt upgrade -y

sudo apt install libfl-dev -y
sudo apt install zlib1g-dev -y
sudo apt install curl -y

mkdir $HOME/graalvm21

curl -o $HOME/graalvm21/graalvm-jdk-21_linux-x64_bin.tar.gz https://download.oracle.com/graalvm/21/latest/graalvm-jdk-21_linux-x64_bin.tar.gz

tar -xzf $HOME/graalvm21/graalvm-jdk-21_linux-x64_bin.tar.gz -C $HOME/graalvm21

echo 'JAVA_HOME="$HOME/graalvm21/graalvm-jdk-21.0.1+12.1/"' >> ~/.bashrc
echo 'PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc

echo 'export JAVA_HOME="$HOME/graalvm21/graalvm-jdk-21.0.1+12.1/"' >> ~/.bashrc
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc