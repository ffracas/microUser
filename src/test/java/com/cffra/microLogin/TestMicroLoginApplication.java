package com.cffra.microLogin;

import org.springframework.boot.SpringApplication;

public class TestMicroLoginApplication {

	public static void main(String[] args) {
		SpringApplication.from(MicroLoginApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
