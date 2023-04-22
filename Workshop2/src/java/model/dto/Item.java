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
    private int ItemId;
    private String ItemName;
    private int Price;
    private Category CateObject;

    public Item() {
    }

    public Item(int ItemId, String ItemName, int Price, Category CateObject) {
        this.ItemId = ItemId;
        this.ItemName = ItemName;
        this.Price = Price;
        this.CateObject = CateObject;
    }

    public int getItemId() {
        return ItemId;
    }

    public void setItemId(int ItemId) {
        this.ItemId = ItemId;
    }

    public String getItemName() {
        return ItemName;
    }

    public void setItemName(String ItemName) {
        this.ItemName = ItemName;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public Category getCateObject() {
        return CateObject;
    }

    public void setCateObject(Category CateObject) {
        this.CateObject = CateObject;
    }
    
    
}
