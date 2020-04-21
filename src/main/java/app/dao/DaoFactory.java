package app.dao;

import app.connection_pool.ConnectionPool;
import app.dao.impl.*;

import java.sql.Connection;

public class DaoFactory {

    private static Connection connection = ConnectionPool.getConnection();
    private static DaoFactory daoFactory = new DaoFactory();

    private DaoFactory() {
    }

    public static DaoFactory getFactory() {
        return daoFactory;
    }

    public void close() {
        ConnectionPool.releaseConnection(connection);
    }

    public KuratorDao getKuratorDao() {
        return new KuratorDao(connection);
    }

    public UserDao getUserDao() {
        return new UserDao(connection);
    }

    public EventDao getEventDao() {
        return new EventDao(connection);
    }

    public NotificationDao getNotificationDao() {
        return new NotificationDao(connection);
    }

    public StudentDao getStudentDao() {
        return new StudentDao(connection);
    }
}
