package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class Eureka1Application {

	public static void main(String[] args) {
		SpringApplication.run(Eureka1Application.class, args);
		System.out.println("Iniciado serevidor de registro EUREKA >>>>>>>>>>>>");
	}

}
