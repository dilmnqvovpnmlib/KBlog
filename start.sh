echo "minikube start"
minikube start --kubernetes-version v1.16.13

echo "eval"
eval $(minikube docker-env)

echo "kubectl config use-context kblog"
kubectl config use-context kblog

echo "make up"
make up
