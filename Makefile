install:
	pip install --upgrade pip &&\
		pip install -r requirement.txt

test:
	python -m pytest -vv test_*.py 

fromat:
	black *.py 

lint:
	pylint -disable=R,C --ignore-patterns=test .*?py *.py 

all: install lint test