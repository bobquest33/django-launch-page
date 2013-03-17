build:
	python setup.py sdist

clean:
	rm -rf ./dist
	rm -rf *.egg-info
	rm -rf ./.tox
	find . -name *.pyc -delete

install_deps: install_deps_py

install_deps_py:
	pip install -r requirements.txt

register:
	python setup.py register


test: test_tox

test_tox:
	tox --recreate

upload:
	python setup.py upload
