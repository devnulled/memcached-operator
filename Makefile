export OPERATOR_NAME=memcached-operator

build-local:
	operator-sdk generate k8s
	operator-sdk build quay.io/example/memcached-operator:v0.0.1

run-local:
	dep ensure
	operator-sdk generate k8s
	operator-sdk up local --namespace=default