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
import model.dto.FAQ;
import mylib.DBUtil;

/**
 *
 * @author Admin
 */
public class FAQDao {

    //get all faq where ItemId = ?
    public static ArrayList<FAQ> getFAQSpecificIdtem(int itemId) throws Exception {
        ArrayList<FAQ> faqList = new ArrayList<>();
        Connection cn = DBUtil.makeConnection();
        if (cn != null) {
            String sql = "select [CustName], [CustContent], [ItemId]\n"
                    + "from [dbo].[FAQ]\n"
                    + "where [ItemId] = ?";
            PreparedStatement pps = cn.prepareStatement(sql);
            pps.setInt(1, itemId);
            ResultSet rss = pps.executeQuery();
            if (rss != null) {
                while (rss.next()) {                    
                    String custName = rss.getString("CustName");
                    String custContent = rss.getString("CustContent");
                    int idItem = rss.getInt("Itemid");
                    FAQ f = new FAQ(custName, custContent, itemId);
                    faqList.add(f);
                }
            }
            cn.close();
        }
        return faqList;
    }
}
