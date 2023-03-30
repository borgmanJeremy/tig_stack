server:
	ansible-playbook -b server.yml --ask-become-pass

decrypt:
	ansible-vault decrypt --vault-password-file .vault-password vars/vault.yml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password vars/vault.yml

