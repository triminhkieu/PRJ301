/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.dto.Category;
import model.dto.Item;
import mylib.DBUtil;

/**
 *
 * @author Admin
 */
public class ItemDao {

    //this method to get items where cateid = ?
    public static ArrayList<Item> getItems(int cateid) throws Exception {
        ArrayList<Item> itemList = new ArrayList<>();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "select [ItemId], [ItemName], [Price], [CateId]\n"
                    + "from [dbo].[Items]\n"
                    + "where [CateId] = ?";
            PreparedStatement pps = cn.prepareStatement(sql);
            pps.setInt(1, cateid);
            ResultSet rs = pps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    int id = rs.getInt("ItemId");
                    String name = rs.getString("ItemName");
                    int price = rs.getInt("Price");
                    int cid = rs.getInt("CateId");
                    sql = "select [CateId], [CateName], [Status]\n"
                            + "from [dbo].[Categories]\n"
                            + "where [CateId] = ?";
                    pps = cn.prepareStatement(sql);
                    pps.setInt(1, cateid);
                    ResultSet rsCate = pps.executeQuery();
                    if (rsCate != null && rsCate.next()) {
                        int idCate = rsCate.getInt("CateId");
                        String nameCate = rsCate.getString("CateName");
                        int sttCate = rsCate.getInt("Status");
                        Category cate = new Category(idCate, nameCate, sttCate);
                        Item it = new Item(id, name, price, cate);
                        itemList.add(it);
                    }
                }
            }
            cn.close();
        }
        return itemList;
    }

    //this method to get a item where ItemId = ?
    public static Item getItem(int itemid) throws Exception {
        Item item = new Item();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "select [ItemId], [ItemName], [Price], [CateId]\n"
                    + "from [dbo].[Items]\n"
                    + "where [ItemId] = ?";
            PreparedStatement pps = cn.prepareStatement(sql);
            pps.setInt(1, itemid);
            ResultSet rs = pps.executeQuery();
            if (rs != null && rs.next()) {
                    int id = rs.getInt("ItemId");
                    String name = rs.getString("ItemName");
                    int price = rs.getInt("Price");
                    int cid = rs.getInt("CateId");
                    sql = "select [CateId], [CateName], [Status]\n"
                            + "from [dbo].[Categories]\n"
                            + "where [CateId] = ?";
                    pps = cn.prepareStatement(sql);
                    pps.setInt(1, cid);
                    ResultSet rsCate = pps.executeQuery();
                    if (rsCate != null && rsCate.next()) {
                        int idCate = rsCate.getInt("CateId");
                        String nameCate = rsCate.getString("CateName");
                        int sttCate = rsCate.getInt("Status");
                        Category cate = new Category(idCate, nameCate, sttCate);
                        item = new Item(id, name, price, cate);
                    }
            }
            cn.close();
        }
        return item;
    }
}
