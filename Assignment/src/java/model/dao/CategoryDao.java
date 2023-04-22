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
import mylib.DBUtil;

/**
 *
 * @author Admin
 */
public class CategoryDao {

    //get all category
    public static ArrayList<Category> getAllCategory() throws Exception {
        ArrayList<Category> cateList = new ArrayList<>();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "select [CateId], [CateName], [Status]\n"
                    + "from [dbo].[Categories]";
            PreparedStatement pps = cn.prepareStatement(sql);
            ResultSet rss = pps.executeQuery();
            if (rss != null) {
                while (rss.next()) {                    
                    int id = rss.getInt("CateId");
                    String name = rss.getString("CateName");
                    int stt = rss.getInt("Status");
                    cateList.add(new Category(id, name, stt));
                }
            }
            cn.close();
        }

        return cateList;
    }
}
