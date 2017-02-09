/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.ArrayList;
import java.util.List;
import model.entity.Buku;
import model.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Nur Annisa
 */
public class BukuDao {
    public static List<Buku> getAll(){
        List<Buku> list = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "from Buku";
        Query query = session.createQuery(hql);
        list = query.list();
        return list;
    }
}
