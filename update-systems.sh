# ./update-systems.sh
ansible-playbook -i inventory.ini update-systems-playbook.yaml --ask-become-pass
