#!/bin/bash
# ./kubespray-install.sh
if [ ! -d ./kubespray-2.22.0 ]; then
	wget https://github.com/kubernetes-sigs/kubespray/archive/refs/tags/v2.22.0.tar.gz
	tar -xf v2.22.0.tar.gz
	rm v2.22.0.tar.gz
fi

EXTERNAL=""
read -p "A instalação do cluster parte de uma máquina externa ao cluster? (y/N)" EXTERNAL
if [ $EXTERNAL = "y" ]; then
  pip install virtualenv

  VENVDIR=kubespray-venv
  KUBESPRAYDIR=kubespray-2.22.0
  ANSIBLE_VERSION=2.12
  virtualenv  --python=$(which python3) $VENVDIR
  source $VENVDIR/bin/activate
  cd $KUBESPRAYDIR
  pip install -U -r requirements-$ANSIBLE_VERSION.txt
elif [ $EXTERNAL = "N" ]; then 
  cd kubespray-2.22.0
  pip install -U -r requirements.txt
else
  echo "Entrada inválida"
fi
