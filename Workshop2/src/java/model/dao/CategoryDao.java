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

    //this method to get categories where status = ?
    public static ArrayList<Category> getCategory(int status) throws Exception {
        ArrayList<Category> result = new ArrayList<>();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "select [CateId], [CateName], [Status]\n"
                    + "from [dbo].[Categories]\n"
                    + "where [Status] = ?";
            PreparedStatement pps = cn.prepareStatement(sql);
            pps.setInt(1, status);
            ResultSet rs = pps.executeQuery();
            if (rs != null) {
                while (rs.next()) {                    
                    int id = rs.getInt("CateID");
                    String name = rs.getString("CateName");
                    int stt = rs.getInt("Status");
                    Category cate = new Category(id, name, stt);
                    result.add(cate);
                }
            }
            cn.close();
        }
        return result;
    }
}
