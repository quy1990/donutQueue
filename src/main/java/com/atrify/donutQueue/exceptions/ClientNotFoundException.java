package com.atrify.donutQueue.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND, reason = "Client not found")
public class ClientNotFoundException extends RuntimeException {
}