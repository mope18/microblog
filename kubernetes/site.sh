minikube delete
minikube start
minikube addons enable ingress
minikube kubectl -- apply -f mysql-secrets.yml
minikube kubectl -- apply -f mysql-pv.yml
minikube kubectl -- apply -f mysql-deployment.yml
minikube kubectl -- apply -f microblog-deployment.yaml
minikube kubectl -- apply -f microblog-ingress.yaml