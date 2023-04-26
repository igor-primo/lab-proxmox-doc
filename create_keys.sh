HOSTS=()
# Cria as chaves
if [ ! -d ~/.ssh ]; then
    mkdir ~/.ssh
fi
ssh-keygen -q -t rsa -b 4096 -f ~/.ssh/id_rsa -P ""
# Copia chave pública para os hosts remotos
for HOST in "${HOSTS[@]}"; do
	ssh-keyscan -H $HOST >> ~/.ssh/known_hosts
	ssh-copy-id $USER@$HOST
done
echo "Teste o ssh."
