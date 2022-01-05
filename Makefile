SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

dev:
	@echo "Activate your python virtual environment before provisioning the VM"
	@vagrant up --provision
	@echo "Run 'vagrant ssh' to SSH to VirtualBox"
	@echo "Remember to add the SSH key to your account on GitHub"

venv: requirements.txt
	@echo "Creating python virtual environment. This might take a while."
	@python3 -m venv $@
	@$@/bin/python -m pip install --upgrade pip
	@$@/bin/pip install -r $<
	@source $@/bin/activate
	@echo "Run 'source $@/bin/activate' to activate your python virtual environment"

clean:
	@rm -rf venv
