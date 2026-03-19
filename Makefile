virtualenv: ## Create virtual environment
	python -m venv venv; fi
	echo "To activate the new environment runs this: 'source venv/bin/activate' (in Linux) or this: 'source venv/Scripts/activate' (in Windows)"

format: ##  clear cell outputs in addition to reformatting
	black-nb --clear-output .

format-check: heck if notebooks pass black and additionally have no output (files will be unchanged)
	black-nb --clear-output --check .