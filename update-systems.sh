# ./update-systems.sh
(
	source ./kubespray-venv/bin/activate
	ansible-playbook -i inventory.ini update-systems-playbook.yaml --become --become-user=root
)
