cp -rfp inventory/sample inventory/mycluster
# IPS é um vetor contendo os hosts do cluster
  declare -a IPS=()
  CONFIG_FILE=inventory/mycluster/hosts.yaml python3 contrib/inventory_builder/inventory.py ${IPS[@]}
# nesse ponto pode-se revisar e modificar as variáveis em
# inventory/mycluster/group_vars/all/all.yml
# inventory/mycluster/group_vars/k8s_cluster/k8s_cluster.yml

# para limpar um cluster velho, executar como root:
ansible-playbook -i inventory/mycluster/hosts.yaml --become --become-user=root reset.yml
# para fazer uma nova instalação do kubernetes, executar como root:
ansible-playbook -i inventory/mycluster/hosts.yaml --become --become-user=root cluster.yml
