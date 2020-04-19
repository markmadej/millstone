package com.mmadej.millstone.restservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ErrorController {

    Logger logger = LoggerFactory.getLogger(ErrorController.class);

    @GetMapping("/error")
    public @ResponseBody ResponseEntity<String> error() {
        logger.debug("In error handler");
        return new ResponseEntity<String>("You done fucked up, A-A-ron!", HttpStatus.OK);
    }
}