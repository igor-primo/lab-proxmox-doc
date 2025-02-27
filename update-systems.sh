#!/bin/bash
# ./update-systems.sh
(
	# Se o diretório ./kubespray-venv existe, assume que
	# a instalação parte de uma máquina exterior ao cluster
	# e carrega as variáveis do ambiente virtual
	if [ -d ./kubespray-venv ]; then
		source ./kubespray-venv/bin/activate
	fi
	ansible-playbook -i inventory.ini update-systems-playbook.yaml --become --become-user=root
)
