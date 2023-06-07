# ./install-docker.sh
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf upgrade --refresh -y
dnf install docker-ce docker-ce-cli containerd.io
systemctl start docker
