package com.arif.crud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableAsync;


/**
 * Created by user on 3/7/2017.
 */
@SpringBootApplication
@EnableAsync
@EnableJpaRepositories(basePackages = "com.arif.crud")
@ComponentScan(basePackages = "com.arif.crud")
@EnableAutoConfiguration
public class SpringBootCRUDapp {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootCRUDapp.class,args);
    }
}
