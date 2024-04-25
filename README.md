# My CIS-92 Project 
This is my project.

# Configuration

## The variables from config.yaml

| Variable Name | Default Value | Description |
| --- | --- | --- | 
|  Port | 8000 | The port number used for the application | 
| Student_Name | Armando | Name of the user | 
| Site_Name | "*" | Name of the site | 
| Data_Dir | /data | Where the data is located | 
| Debug | "1" | Debug is enabled | 

## The variables from secret.yaml

| Variable Name | Default Value | Description |
| --- | --- | --- |  
| Metadata | mysite-secret | The metadata from secret.yaml |  
| SECRET_KEY | "this-is-a-bad-key-asedfjwefjasjfsajsadfj" | The secret key |

## The variables values-postgres.yaml

| Variable Name | Default Value | Description |
| --- | --- | --- |  
| username | mysiteuser | Postgres username |  
| password | this-is-a-bad-password | Postgres password |
| database | mysite | The database name| 

#### Primary Resources Requests
| Resource | Default Value | Description |
| --- | --- | --- |
| memory| 512Mi | Minimum memory | 
| cpu | 500m | Minimum CPU |
| ephemeral-storage | 100Mi | Minimum storage|

#### Primary Resource Limits
| Resource | Default Value | Description |
| --- | --- | --- |
|memory | 512Mi |
|cpu | 500m |
|ephemeral-storage | 100Mi |

## Start up commands
helm install postgres oci://registry-1.docker.io/bitnamicharts/postgresql --values values-postgres.yaml 

kubectl apply -f deployment/

### Initilize Database
kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash

python manage.py migrate

python manage.py createsuperuser

### Delete the Kubernetes pod
kubectl delete -f deployment/

### Delete Postgres 
helm uninstall postgres
#



This repository has the starter code for CIS-92. 

By: Armando Partida