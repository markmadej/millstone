package com.mmadej.millstone.domain;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;

@AllArgsConstructor
@EqualsAndHashCode
@Data public class User {
    private double userID;
    private String firstName;
    private String lastName;
}