install:
	pip --disable-pip-version-check install -r requirements.txt
	ansible-galaxy collection install -r requirements.yml
