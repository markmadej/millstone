package com.mmadej.millstone;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * MillstoneApplication is the entry point for this service.
 */
@SuppressWarnings("checkstyle:hideutilityclassconstructor")
@SpringBootApplication
public class MillstoneApplication {

    /**
     * main is the entrypoint method for this service.
     *
     * @param args are the command line arguments to this application.
     */
    public static void main(final String[] args) {
        SpringApplication.run(MillstoneApplication.class, args);
    }
}
