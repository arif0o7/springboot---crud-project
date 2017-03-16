package com.arif.crud.controller;

/**
 * Created by user on 3/9/2017.
 */
public class CustomErrorType {
    private String errorMessage;

    public CustomErrorType(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }
}
