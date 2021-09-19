run: playbooks/main.yml
	ansible-playbook playbooks/main.yml

playbooks/main.yml: playbooks/main.yml.m4
	m4 --define=M4_MESSAGE="dynamic" -I task_inventory playbooks/main.yml.m4 > playbooks/main.yml


clean:
	rm playbooks/main.yml
