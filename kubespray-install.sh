if [ ! -d ~/repos ]; then
    mkdir ~/repos
fi
cd ~/repos
git clone https://github.com/kubernetes-sigs/kubespray
cd kubespray
pip3 install -r requirementes.txt
