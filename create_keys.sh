HOSTS=(10.20.1.247 10.20.1.249)
# Cria as chaves
mkdir ~/.ssh
ssh-keygen -q -t rsa -b 4096 -f ~/.ssh/id_rsa -P ""
# Copia chave pública para os hosts remotos
for HOST in "${HOSTS[@]}"; do
	ssh-keyscan -H $HOST >> ~/.ssh/known_hosts
	ssh-copy-id $USER@$HOST
done
echo "Teste o ssh."
