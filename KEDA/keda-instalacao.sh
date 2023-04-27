kubectl create namespace keda

helm repo add kedacore https://kedacore.github.io/charts

helm install keda kedacore/keda --namespace keda