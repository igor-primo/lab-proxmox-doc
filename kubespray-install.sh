# ./kubespray-install.sh
if [ ! -d /tmp/repos ]; then
	mkdir /tmp/repos
fi
cd /tmp/repos
git clone https://github.com/kubernetes-sigs/kubespray
cd kubespray
pip3 install -r requirementes.txt
