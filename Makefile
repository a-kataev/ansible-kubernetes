install:
	pip --disable-pip-version-check install -r requirements.txt
	ansible-galaxy collection install -r requirements.yml

lint:
	ansible-playbook playbooks/balancer.yml --syntax-check -C
	ansible-playbook playbooks/etcd_cluster.yml --syntax-check -C
	ansible-playbook playbooks/kubernetes_cluster.yml --syntax-check -C
	ansible-lint --offline playbooks/
	yamllint playbooks/
	ansible-lint --offline roles/
	yamllint roles/
