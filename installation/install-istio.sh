curl -L https://istio.io/downloadIstio | sh -
cd istio*
export PATH=$PWD/bin:$PATH
kubectl create namespace istio-system
istioctl install --set profile=demo -y
kubectl label namespace default istio-injection=enabled --overwrite
$SHELL
