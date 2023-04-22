/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dto;

/**
 *
 * @author Admin
 */
public class Category {
    private int cateId;
    private String cateName;
    private int cateStatus;

    public Category() {
    }

    public Category(int cateId, String cateName, int cateStatus) {
        this.cateId = cateId;
        this.cateName = cateName;
        this.cateStatus = cateStatus;
    }

    public int getCateId() {
        return cateId;
    }

    public void setCateId(int cateId) {
        this.cateId = cateId;
    }

    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }

    public int getCateStatus() {
        return cateStatus;
    }

    public void setCateStatus(int cateStatus) {
        this.cateStatus = cateStatus;
    }
    
    
}
