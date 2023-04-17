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

    //ham nay de insert 1 dong vao bang FAQ
    public static int InsertFAQ(String name, String content, int itemid) throws Exception {
        int kq = 0;
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String s = "insert into [dbo].[FAQ]([CustName], [CustContent], [ItemId])\n"
                    + "values (?, ?, ?)";
            PreparedStatement pst = cn.prepareStatement(s);
            pst.setString(1, name);
            pst.setString(2, content);
            pst.setInt(3, itemid);
            kq = pst.executeUpdate();
            cn.close();

        }

        return kq;
    }
}
