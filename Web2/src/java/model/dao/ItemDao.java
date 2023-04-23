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

    //ham nay de lay tat ca cac item dua vao ma loai
    public static ArrayList<Item> getItems(int maloai) throws Exception {
        ArrayList<Item> kq = new ArrayList<>();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String s = "select [ItemId], [ItemName], [Price], [CateId]\n"
                    + "from [dbo].[Items]\n"
                    + "where [CateId] = ?";
            PreparedStatement pst = cn.prepareStatement(s);
            pst.setInt(1, maloai);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    int a = rs.getInt("ItemId");
                    String b = rs.getString("ItemName");
                    int c = rs.getInt("Price");
                    int d = rs.getInt("CateId");
                    //lay catename dua vao cateid
                    s = "select [CateId], [CateName], [Status]\n"
                            + "from [dbo].[Categories]\n"
                            + "where [CateId] = ?";
                    pst = cn.prepareStatement(s);
                    pst.setInt(1, d);
                    ResultSet tmp = pst.executeQuery();
                    //khong can while vi no run 1 loop
                    if (tmp != null && tmp.next()) {
                        int cateid = tmp.getInt("CateId");
                        String catename = tmp.getString("CateName");
                        int status = tmp.getInt("Status");
                        Category cate = new Category(cateid, catename, status);
                        Item it = new Item(a, b, c, cate);
                        kq.add(it);
                    }
                }
            }
            cn.close();
        }
        return kq;
    }

    public static ArrayList<Item> getItems() throws Exception {
        ArrayList<Item> kq = new ArrayList<>();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String s = "select [ItemId], [ItemName], [Price], [CateId]\n"
                    + "from [dbo].[Items]\n";
            PreparedStatement pst = cn.prepareStatement(s);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    int a = rs.getInt("ItemId");
                    String b = rs.getString("ItemName");
                    int c = rs.getInt("Price");
                    int d = rs.getInt("CateId");
                    //lay catename dua vao cateid
                    s = "select [CateId], [CateName], [Status]\n"
                            + "from [dbo].[Categories]\n"
                            + "where [CateId] = ?";
                    pst = cn.prepareStatement(s);
                    pst.setInt(1, d);
                    ResultSet tmp = pst.executeQuery();
                    //khong can while vi no run 1 loop
                    if (tmp != null && tmp.next()) {
                        int cateid = tmp.getInt("CateId");
                        String catename = tmp.getString("CateName");
                        int status = tmp.getInt("Status");
                        Category cate = new Category(cateid, catename, status);
                        Item it = new Item(a, b, c, cate);
                        kq.add(it);
                    }
                }
            }
            cn.close();
        }
        return kq;
    }

    public static Item getItem(int itemid) throws Exception {
        Item it = null;
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String s = "select [ItemId],[ItemName],[Price],[CateId]\n"
                    + "from [dbo].[Items]\n"
                    + "where [ItemId] = ?";

            PreparedStatement pst = cn.prepareStatement(s);
            pst.setInt(1, itemid);
            ResultSet kq = pst.executeQuery();
            if (kq != null && kq.next()) {
                String name = kq.getString("ItemName");
                int price = kq.getInt("Price");
                int cateid = kq.getInt("CateId");
                it = new Item(itemid, name, price, null);
            }
            cn.close();
        }
        return it;
    }

}
