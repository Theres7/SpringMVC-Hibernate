package com.project.dao;

import com.project.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoImpl implements LoginDao {

    @Autowired
    private SessionFactory factory;

    private User user;

    @Override
    public boolean validateUser(String username, String password) {
        Transaction transaction = null;

        try (Session session = factory.openSession()) {
            transaction = session.beginTransaction();  // start a transaction

            // get a user object
            user = (User) session.createQuery( "FROM User U WHERE U.username = :username " )
                    .setParameter( "username", username ).uniqueResult();

            if (user != null && user.getPassword().equals( password )) {
                return true;
            }
            transaction.commit();  // commit transaction

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public String validUserFirstName() {

        String firstName = user.getFirstName();
        return firstName;
    }
}

