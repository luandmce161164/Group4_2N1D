/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Date;

/**
 *
 * @author User
 */
public class Account {
       private int account_id; 
       private String username; 
       private String name; 
       private Date date_of_birth; 
       private String email; 
       private String phone_number; 
       private String passsword;      
       private int status; 
       private String address; 

    public Account() {
    }

    public Account(int account_id, String username, String name, Date date_of_birth, String email, String phone_number, String passsword, int status, String address) {
        this.account_id = account_id;
        this.username = username;
        this.name = name;
        this.date_of_birth = date_of_birth;
        this.email = email;
        this.phone_number = phone_number;
        this.passsword = passsword;      
        this.status = status;
        this.address = address;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(Date date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getPasssword() {
        return passsword;
    }

    public void setPasssword(String passsword) {
        this.passsword = passsword;
    }
   
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
       
}
