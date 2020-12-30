# Author: Erik Anderson 
# Date Created: 12/29/2020

default: test

# Lints anki-decks directory recursively
lint:
	pylint anki-decks tests

# Formats anki-decks directory recursively
format:
	yapf -i -r anki-decks tests

# Type checks anki-decks directory recursively
type:
	mypy anki-decks tests

# Runs all tests in tests directory 
test:
	pytest -v tests

# Export anaconda environment
export:
	conda env export --from-history | grep -v "prefix" > environment.yml
