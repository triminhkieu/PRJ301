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

    //get all items
    public static ArrayList<Item> getAllItems() throws Exception {
        ArrayList<Item> listItem = new ArrayList<>();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "select [ItemId], [ItemName], [Price], [CateId]\n"
                    + "from [dbo].[Items]";
            PreparedStatement pps = cn.prepareStatement(sql);
            ResultSet rss = pps.executeQuery();
            if (rss != null) {
                while (rss.next()) {
                    int id = rss.getInt("ItemId");
                    String name = rss.getString("ItemName");
                    int price = rss.getInt("Price");
                    int cid = rss.getInt("CateId");
                    sql = "select [CateId], [CateName], [Status]\n"
                            + "from [dbo].[Categories]\n"
                            + "where [CateId] = ?";
                    pps = cn.prepareStatement(sql);
                    pps.setInt(1, cid);
                    ResultSet rssCate = pps.executeQuery();
                    if (rssCate != null && rssCate.next()) {
                        int cateId = rssCate.getInt("CateId");
                        String cateName = rssCate.getString("CateName");
                        int cateStatus = rssCate.getInt("Status");
                        Category cateObject = new Category(cateId, cateName, cateStatus);
                        Item itemObject = new Item(id, name, price, cateObject);
                        listItem.add(itemObject);
                    }

                }
            }
            cn.close();
        }

        return listItem;
    }

    //get item where id = ?
    public static Item getItem(int itemid) throws Exception {
        Item item = new Item();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "select [ItemId], [ItemName], [Price], [CateId]\n"
                    + "from [dbo].[Items]\n"
                    + "where [ItemId] = ?";
            PreparedStatement pps = cn.prepareStatement(sql);
            pps.setInt(1, itemid);
            ResultSet rss = pps.executeQuery();
            if (rss != null && rss.next()) {
                int id = rss.getInt("ItemId");
                String name = rss.getString("ItemName");
                int price = rss.getInt("Price");
                int cid = rss.getInt("CateId");
                sql = "select [CateId], [CateName], [Status]\n"
                        + "from [dbo].[Categories]\n"
                        + "where [CateId] = ?";
                pps = cn.prepareStatement(sql);
                pps.setInt(1, cid);
                ResultSet rssCate = pps.executeQuery();
                if (rssCate != null && rssCate.next()) {
                    int cateId = rssCate.getInt("CateId");
                    String cateName = rssCate.getString("CateName");
                    int cateStatus = rssCate.getInt("Status");
                    Category cateObject = new Category(cateId, cateName, cateStatus);
                    item = new Item(id, name, price, cateObject);
                }
            }
            cn.close();
        }

        return item;
    }

    //update item info where itemid = ?
    public static boolean setItem(int id, String name, int price, int cid) throws Exception {
        boolean flag = false;
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "update [dbo].[Items]\n"
                    + "set [ItemName] = ?, [Price] = ?, [CateId] = ?\n"
                    + "where [ItemId] = ?";
            PreparedStatement pps = cn.prepareStatement(sql);
            pps.setString(1, name);;
            pps.setInt(2, price);
            pps.setInt(3, cid);
            pps.setInt(4, id);
            if (pps.executeUpdate() != 0) {
                flag = true;
            }
            cn.close();
        }
        return flag;
    }

    //create a new item
    public static boolean createItem(int id, String name, int price, int cid) throws Exception {
        boolean flag = false;
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "insert into [dbo].[Items] ([ItemId], [ItemName], [Price], [CateId])\n"
                    + "values (?, ?, ?, ?)";
            PreparedStatement pps = cn.prepareStatement(sql);
            pps.setInt(1, id);
            pps.setString(2, name);
            pps.setInt(3, price);
            pps.setInt(4, cid);
            flag = pps.executeUpdate() > 0 ? true : false;
        }

        return flag;
    }
}
