package com.gestaopessoal.personal_manager;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAdminServer
public class PersonalManagerApplication {

	public static void main(String[] args) {
		SpringApplication.run(PersonalManagerApplication.class, args);
	}

}
