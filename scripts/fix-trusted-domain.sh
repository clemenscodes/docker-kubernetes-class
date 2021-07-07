#!/bin/sh
# Dieses Skript nur nutzen, wenn die Trusted Domain nicht erkannt wird.
kubectl exec -it $(kubectl get pods | grep nextcloud| awk '{print $1}') -- sed -i "0,/'localhost'/s//'localhost',\n    1 => '$(minikube ip)'/" config/config.php
