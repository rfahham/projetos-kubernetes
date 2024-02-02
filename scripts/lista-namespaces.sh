#!/bin/bash

kubectl get ns | awk '{print $1}' | grep -iv '^\(cattle\|gatekeeper\|kube\|fleet-system\).*' | tail -n+2 | tr '\n' ',' #| sed -e 's@,@","@g' -e 's@^@"@g' -e 's@,"$@@g'

