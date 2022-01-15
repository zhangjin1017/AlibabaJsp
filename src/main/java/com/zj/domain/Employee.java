package com.zj.domain;

import lombok.Data;

@Data
public class Employee {
    private String name;
    private double salary;
    private Address address;
}
