
package com.cognizant.eureka_discovery_server;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
@EnableEurekaServer
@SpringBootApplication
@EnableDiscoveryClient
public class EurekaDiscoveryServerApplication {
	public static void main(String[] args) {
		SpringApplication.run(EurekaDiscoveryServerApplication.class, args);
	}
}


