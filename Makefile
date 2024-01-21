SCRIPT_DIR="./script"

install:
	npm install
	./${SCRIPT_DIR}/postinstall.sh


serve:
	zola serve