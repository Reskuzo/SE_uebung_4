# Software Engineering Summer 2024

This repository is used to showcase concepts such as build automation, code quality monitoring, continuous integration, 
behavior-driven development, as well as architectures for web applications.

## Spring Boot Web Application

### Start application

```bash
mvn spring-boot:run
```

### Get list

```bash
curl http://localhost:8080/list
```

### Append to list

```bash
 curl --header "Content-Type: application/json" --request POST --data '[{"value": 0.5, "metadata": ""}, {"value": 0.6, "metadata": ""}]' http://localhost:8080/list  
```

### Append to list (malformed body)

```bash
 curl --header "Content-Type: application/json" --request POST --data '[{"value": 0.5; "metadata": ""}]' http://localhost:8080/list  
```

### Clear list

```bash
curl --request DELETE http://localhost:8080/list
```
### Aufgabe 4-2 b)
Das zugrundeliegende Prinzip nennt sich [Dependancy Injection](https://www.jamesshore.com/v2/blog/2006/dependency-injection-demystified) 
und funktioniert indem eine höhere Softwareschicht - in diesem Fall Spring boot eine Instanz von ListServiceImpl generiert,
die ListService implementiert. Der Service diehnt dabei wie eine Art Bestellung für die zur Laufzeit dann die Implementaion eingefügt wird. 