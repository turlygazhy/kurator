package app.dao;

import app.connection_pool.ConnectionPool;
import app.dao.impl.KuratorDao;
import app.dao.impl.UserDao;

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
}
