# ./remove-firewall-enable-root-ssh.sh
(
	source /tmp/repos/kubespray-venv/bin/activate
	ansible-playbook -i inventory.ini remove-firewall-enable-root-ssh-playbook.yaml --ask-become-pass
)
