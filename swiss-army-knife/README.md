# swiss-army-knife

## Deployment

```bash
✗ kubectl apply -f deployment.yaml 
    deployment.apps/swiss-army-knife created    
```

## Listando o pod

```bash
✗ kubectl get pods
    NAME                                READY   STATUS    RESTARTS   AGE
    swiss-army-knife-564fdd8d8b-khbhd   1/1     Running   0          66s
```

## Executando o swiss-army-knife

```bash
    kubectl exec -it swiss-army-knife-564fdd8d8b-khbhd -n workon -- sh
```

