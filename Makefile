build_artifacts:
	mkdir -p ./dependencies/python && \
	./venv/bin/pip install -r requirements.txt -t ./dependencies/python

package: build_artifacts
	mkdir -p ./dependencies/python && \
	./venv/bin/pip install -r requirements.txt -t ./dependencies/python && \
	aws s3api create-bucket --bucket numba-teste && \
	sam package --template-file template.yaml --s3-bucket numba-teste --output-template-file packaged.yaml
 
deploy: package 
	sam deploy --template-file ./packaged.yaml --stack-name numba-test-stack
