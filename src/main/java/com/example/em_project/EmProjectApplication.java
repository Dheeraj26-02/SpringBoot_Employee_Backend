package com.example.em_project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class EmProjectApplication {

	public static void main(String[] args) {

		SpringApplication.run(EmProjectApplication.class, args);
		System.out.println(" ____   _                                        \n" +
				"|  _ \\ | |__    ___   ___ _ __ __ _  __       \n" +
				"| | | || '_ \\  / _ \\ / _ \\ '__/ _` ||  |     \n" +
				"| |_| || | | ||  __/|  __/ | | (_| ||  |   \n" +
				"|____/ |_| |_| \\___| \\___|_|  \\__,_||  |\n" +
				"                                    |  |\n" +
				"                                 __ /  /\n" +
				"                                |____ / ");
		System.out.println("Server running at "+"http://localhost:9000/");
	}

}