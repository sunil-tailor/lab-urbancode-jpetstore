# urbancode use caes JPetStore

Docker Setup 

## Starting UrbanCode Deploy Server


```
docker run -it --name ucd -p 8443:8443 -p 7918:7918 -p 8080:8080 -t ibmcom/ucds:6.2.7.1.960481
```
1. Run UCD container in interactive mode
1. Answer installation questions. (Just press enter twice)
1. Exit running container - Ctrl + C 
1. Start the same stopped container again (Yes this seems to be a issue with the Docker image)

```
docker start ucd
```
- https://localhost:8443


## Get UCD IP

```
UCD_SERVER_IP=$(docker inspect ucd \
| jq '.[]|.NetworkSettings|.Networks|.bridge|.IPAddress' \
| tr -d '"')
```



