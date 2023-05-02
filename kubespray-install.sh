# ./kubespray-install.sh
if [ ! -d /tmp/repos ]; then
	mkdir /tmp/repos
fi

cd /tmp/repos

if [ ! -d ./kubespray ]; then
	git clone https://github.com/kubernetes-sigs/kubespray
fi

pip install virtualenv

VENVDIR=kubespray-venv
KUBESPRAYDIR=kubespray
ANSIBLE_VERSION=2.12
virtualenv  --python=$(which python3) $VENVDIR
source $VENVDIR/bin/activate
cd $KUBESPRAYDIR
pip install -U -r requirements-$ANSIBLE_VERSION.txt
