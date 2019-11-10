BOM_PATH?=_data/bill_of_materials.csv
XML_PATH?=hardware/*.xml

.PHONY: serve build install bom

serve: build
	jekyll serve

build:
	jekyll build

bom:
	rm -f $(BOM_PATH)
	python scripts/bom.py $(XML_PATH) $(BOM_PATH)

install:
	echo "Installing git-secrets from awslabs..."
	brew install git-secrets

	echo "Adding git-secrets config..."
	cat scripts/_git-secrets >> .git/config

	echo "Installing git hook"
	touch .git/hooks/pre-commit || exit

	echo "Making pre-commit hook executable"
	chmod u+x .git/hooks/pre-commit

	echo "Adding .gitignore..."
	cat scripts/_gitignore > .gitignore

	echo "Adding Makefile..."
	cat scripts/_Makefile > .gitignore
