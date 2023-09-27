package com.ttt.demo.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ExceptionHandlerAdvice {

    private final Logger logger = LoggerFactory.getLogger(ExceptionHandlerAdvice.class);

    @ExceptionHandler
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public String handle(MissingServletRequestParameterException e) {
        logger.info(e.getMessage());
        String errorResponse = "{\"Error\" : \"Missing required request parameter: '" + e.getParameterName() + "' of type: '" + e.getParameterType() + "'. Please check that this is included in your input.\"}";
        return errorResponse;
    }

    @ExceptionHandler
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public String handle(IllegalArgumentException e) {
        logger.info(e.getMessage());
        String errorResponse = "{\"Error\" : " + e.getMessage() + ". Please check that the parameters are of the right type and try again. }";
        return errorResponse;
    }
}

