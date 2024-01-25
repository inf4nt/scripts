sudo apt install curl -y

sudo curl -o /opt/apache-maven-3.9.6-bin.tar.gz https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz

sudo tar -xzf /opt/apache-maven-3.9.6-bin.tar.gz -C /opt/

sudo rm /opt/apache-maven-3.9.6-bin.tar.gz

echo M2_HOME=/opt/apache-maven-3.9.6/ >> ~/.bashrc
echo 'PATH="$M2_HOME/bin:$PATH"' >> ~/.bashrc

echo export M2_HOME=/opt/apache-maven-3.9.6/ >> ~/.bashrc
echo 'export PATH="$M2_HOME/bin:$PATH"' >> ~/.bashrc