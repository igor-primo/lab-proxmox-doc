# ./kubespray-install.sh
if [ ! -d ./kubespray ]; then
	git clone https://github.com/kubernetes-sigs/kubespray
fi

EXTERNAL=""
read -p "A instalação do cluster parte de uma máquina externa ao cluster? (y/N)" EXTERNAL
if [ $EXTERNAL = "y" ]; then
  pip install virtualenv

  VENVDIR=kubespray-venv
  KUBESPRAYDIR=kubespray
  ANSIBLE_VERSION=2.12
  virtualenv  --python=$(which python3) $VENVDIR
  source $VENVDIR/bin/activate
  cd $KUBESPRAYDIR
  pip install -U -r requirements-$ANSIBLE_VERSION.txt
elif [ $EXTERNAL ="N" ]; then 
  cd kubespray
  pip install -U -r requirements.txt
else
  echo "Entrada inválida"
fi
