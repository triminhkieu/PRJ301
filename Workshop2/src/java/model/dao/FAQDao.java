/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import mylib.DBUtil;

/**
 *
 * @author Admin
 */
public class FAQDao {

    //this method to insert data into FAQ
    public static int InsertFAQ(String name, String content, int iditem) throws Exception {
        int rs = 0;
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "insert into [dbo].[FAQ] ([CustName], [CustContent], [ItemId])\n"
                    + "values (?, ?, ?)";
            PreparedStatement pps = cn.prepareStatement(sql);
            pps.setString(1, name);
            pps.setString(2, content);
            pps.setInt(3, iditem);
            rs = pps.executeUpdate();
            cn.close();
        }
        return rs;
    }
}
