sudo apt update -y
sudo apt upgrade -y

sudo apt install libfl-dev zlib1g-dev curl -y

sudo curl -o /opt/graalvm-jdk-21_linux-x64_bin.tar.gz https://download.oracle.com/graalvm/21/latest/graalvm-jdk-21_linux-x64_bin.tar.gz

sudo tar -xzf /opt/graalvm-jdk-21_linux-x64_bin.tar.gz -C /opt/

sudo rm -rf /opt/graalvm-jdk-21_linux-x64_bin.tar.gz

_java_home_path=$(find /opt/ -type d -name 'graalvm-jdk-21*' -printf "%p" -quit)

echo JAVA_HOME=${_java_home_path} >> ~/.bashrc
echo 'PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc

echo export JAVA_HOME=${_java_home_path} >> ~/.bashrc
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc