BOM_PATH?=_data/bill_of_materials.csv
XML_PATH?=hardware/*.xml

.PHONY: default serve build install bom

default: serve

serve:
	bundle exec jekyll serve

build:
	jekyll build

bom:
	rm -f $(BOM_PATH)
	python scripts/bom.py $(XML_PATH) $(BOM_PATH)

stats:
	python3 scripts/bom_stats.py $(BOM_PATH)

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

	echo "Adding Gemfile and installing ruby gems..."
	cat scripts/Gemfile > Gemfile
	bundle install

update:
	git submodule foreach --recursive git reset --hard HEAD
	git submodule update --remote

uncommit:
	# git uncommit the last commit
	git reset --hard HEAD~1
	# remove the last commit in main branch from the GitHub
	git push -f origin main
