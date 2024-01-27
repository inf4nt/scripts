sudo mkdir /opt/minikube-linux-amd64

sudo curl -o /opt/minikube-linux-amd64/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo chmod +x /opt/minikube-linux-amd64/minikube

echo 'PATH="/opt/minikube-linux-amd64:$PATH"' >> ~/.bashrc
