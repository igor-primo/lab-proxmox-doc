# ./remove-firewall.sh
(
	source /tmp/repos/kubespray-venv/bin/activate
	ansible-playbook -i inventory.ini remove-firewall-playbook.yaml --become --become-user=root
)
