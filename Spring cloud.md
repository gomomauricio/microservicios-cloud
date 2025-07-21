# Spring Cloud

* inyeccion de dependencias @autowired
* inversion de control @service @repository @component
* las dependecias starter ya vienen preconfiguradas
* spring cloud 1 (netflix)
* 

## Spring Context

* extiende de spring core

## Spring HATEOAS  
* exponer endpoints en json

## Microservicios
* dividir una aplicacion grande en varias pequeñas
* servicios pequeños debilmente acoplados


## Service Registry EUREKA

* cada que se crea una instancia se registra
* se le asiga su nombre 
* con solo el nombre el servidor se encarga del puerto y servidor
* inicio en http://localhost:8761/
* desde cmd
* cd C:\Users\mgonzalezm_externo\OneDrive - GS\Documentos\Eclipse\Java17\jdk-17\bin>
* java.exe -jar jars/eureka-1-0.0.1-SNAPSHOT.jar
* SERVICIOS java.exe -jar jars/microservicios-intro-0.0.1-SNAPSHOT.jar
* * 


## Spring Cloud Config Server
* lo mas usado es github
* Para no repetir configuraciones se apunta aun repositorio central
* tambien para usar con profiles perfiles
* si actualizo en github se actualiza en los microservicios



