# sql-ingestion-tutorial
Tutorial to complement Towards Data Science article on ingesting SQL DBs

# Add the JDBC Driver to a folder in this project called "jdbc_drivers"


# Commands to run
docker-compose up -d

docker exec -it sql-ingestion-tutorial-pyspark-client-1 pyspark --jars /jdbc/mysql-connector-java-8.0.26.jar
docker exec -it sql-ingestion-tutorial-python-client-1 python
docker exec -it sql-ingestion-tutorial-sqoop-client-1 /bin/bash

docker-compose down


# Commands for Kubernetes
kubectl create -f pod.yaml

kubectl exec -it mock-enterprise-environment --container python-client -- python
kubectl exec -it mock-enterprise-environment --container pyspark-client -- pyspark --jars /jdbc/mysql-connector-java-8.0.26.jar
kubectl exec -it mock-enterprise-environment --container sqoop-client -- /bin/bash

kubectl delete pod mock-enterprise-environment

### MINIKUBE needed
minikube start
minikube mount /app/sql_ingestion_tutorial/jdbc_drivers:/app/sql_ingestion_tutorial/jdbc_drivers
minikube mount /app/sql_ingestion_tutorial/db_initialization_scripts:/app/sql_ingestion_tutorial/db_initialization_scripts


minikube start --mount-string /app/sql_ingestion_tutorial/jdbc_drivers:/app/sql_ingestion_tutorial/jdbc_drivers --mount