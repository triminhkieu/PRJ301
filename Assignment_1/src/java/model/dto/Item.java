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
public class Item {
    private int itemId;
    private String itemName;
    private int itemPrice;
    private Category cateObject;

    public Item() {
    }

    public Item(int itemId, String itemName, int itemPrice, Category cateObject) {
        this.itemId = itemId;
        this.itemName = itemName;
        this.itemPrice = itemPrice;
        this.cateObject = cateObject;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public int getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(int itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Category getCateObject() {
        return cateObject;
    }

    public void setCateObject(Category cateObject) {
        this.cateObject = cateObject;
    }
    
    
}
