# My CIS-92 Project 
This is my project.

## Configuration

### The variables from config.yaml

| Variable Name | Default Value | Description |
| --- | --- | --- | 
|  Port | 8000 | The port number used for the application | 
| Student_Name | Armando | Name of the user | 
| Site_Name | "*" | Name of the site | 
| Data_Dir | /data | Where the data is located | 
| Debug | "1" | Debug is enabled | 

### The variables from secret.yaml

| Variable Name | Default Value | Description |
| --- | --- | --- |  
| Metadata | mysite-secret | The metadata from secret.yaml |  
| SECRET_KEY | "this-is-a-bad-key-asedfjwefjasjfsajsadfj" | The secret key |

### Start up command
kubectl apply -f deployment/

### Initilize Database
kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash

python manage.py migrate

python manage.py createsuperuser

### Delete the Kubernetes pod
kubectl delete -f deployment/



This repository has the starter code for CIS-92. 

By: Armando Partida