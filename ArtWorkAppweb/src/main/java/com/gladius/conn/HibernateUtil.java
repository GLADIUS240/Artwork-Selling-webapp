package com.gladius.conn;

import java.util.Properties;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;
import com.gladius.entity.Customer;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtil {

    public static SessionFactory sessionFactory;

    public static SessionFactory getSessionFactory() {

        if (sessionFactory == null) {

            Configuration con = new Configuration().addAnnotatedClass(Customer.class);
            Properties properties = new Properties();
            properties.put(Environment.JAKARTA_JDBC_DRIVER, "com.mysql.cj.jdbc.Driver");
            properties.put(Environment.JAKARTA_JDBC_URL, "jdbc:mysql://localhost:3306/gladius?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true");
            properties.put(Environment.JAKARTA_JDBC_USER, "root");
            properties.put(Environment.JAKARTA_JDBC_PASSWORD, "password");
            properties.put(Environment.DIALECT, "org.hibernate.dialect.MySQLDialect");
            properties.put(Environment.HBM2DDL_AUTO, "update");
            properties.put(Environment.SHOW_SQL, "true");

            con.setProperties(properties);
            ServiceRegistry reg = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
            sessionFactory = con.buildSessionFactory(reg);
        }

        return sessionFactory;
    }
}
