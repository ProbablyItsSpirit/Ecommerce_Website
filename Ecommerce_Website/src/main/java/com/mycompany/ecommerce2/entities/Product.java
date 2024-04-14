/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecommerce2.entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author Shreya
 */
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int pId;
    @Column(length = 3000)
    private String pDesc;
    private String pPhoto;
    private int pPrice;
    private int pQuantity;
    @ManyToOne
    private  Category category;
   
    

    public Product(int pId, String pDesc, String pPhoto, int pPrice, int pQuantity) {
        this.pId = pId;
        this.pDesc = pDesc;
        this.pPhoto = pPhoto;
        this.pPrice = pPrice;
        this.pQuantity = pQuantity;
    }

    public Product(String pDesc, String pPhoto, int pPrice, int pQuantity) {
        this.pDesc = pDesc;
        this.pPhoto = pPhoto;
        this.pPrice = pPrice;
        this.pQuantity = pQuantity;
    }

    public Product(int pId, String pDesc, String pPhoto, int pPrice, int pQuantity, Category category) {
        this.pId = pId;
        this.pDesc = pDesc;
        this.pPhoto = pPhoto;
        this.pPrice = pPrice;
        this.pQuantity = pQuantity;
        this.category = category;
    }
    
    

    public Product() {
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public String getpPhoto() {
        return pPhoto;
    }

    public void setpPhoto(String pPhoto) {
        this.pPhoto = pPhoto;
    }

    public int getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }

    public int getpQuantity() {
        return pQuantity;
    }

    public void setpQuantity(int pQuantity) {
        this.pQuantity = pQuantity;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    

    @Override
    public String toString() {
        return "Product{" + "pId=" + pId + ", pDesc=" + pDesc + ", pPhoto=" + pPhoto + ", pPrice=" + pPrice + ", pQuantity=" + pQuantity + '}';
    }
    
    
    
    
}
