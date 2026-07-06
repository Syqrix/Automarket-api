package com.automarket.automarket_service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = {
        "com.automarket.automarket_service", "controllers", "services", "repositories", "exceptions"})
@EnableJpaRepositories(basePackages = "repositories")
@EntityScan(basePackages = "entities")
public class AutomarketServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(AutomarketServiceApplication.class, args);
	}

}
