#!/bin/sh

kubectl exec -it $(kubectl get pods | grep nextcloud| awk '{print $1}') -- sed -i "0,/'localhost'/s//'localhost',\n    1 => '192.168.49.2'/" config/config.php
