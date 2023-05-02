# ./update-systems.sh
(
	source /tmp/repos/kubespray-venv/bin/activate
	ansible-playbook -i inventory.ini update-systems-playbook.yaml --ask-become-pass
)
