#!/bin/bash

read -p "Digite o namespace: " NAMESPACE

kubectl create namespace ${NAMESPACE} 2>/dev/null || echo "Namescape already exists"