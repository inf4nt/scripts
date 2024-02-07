WORKDIR="/opt"
MINIKUBE_HOME="$WORKDIR/minikube-linux-amd64"
MINIKUBE_FILE="$MINIKUBE_HOME/minikube"

sudo mkdir $MINIKUBE_HOME

sudo curl -o $MINIKUBE_FILE https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo chmod +x $MINIKUBE_FILE

echo '# MINIKUBE VARIABLES' >> ~/.bashrc
echo MINIKUBE_HOME=$MINIKUBE_HOME >> ~/.bashrc
echo 'PATH="$MINIKUBE_HOME:$PATH"' >> ~/.bashrc
echo '# MINIKUBE VARIABLES END' >> ~/.bashrc
echo '' >> ~/.bashrc