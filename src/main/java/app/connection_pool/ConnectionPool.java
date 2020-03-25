package app.connection_pool;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class ConnectionPool {
    private static final Logger logger = LoggerFactory.getLogger(ConnectionPool.class);

    //data for settings of connection
    private static final int CONNECTION_NUMBER = 1;
    private static final String JDBC_URL = "jdbc:h2:~/kurator";
    private static final String DB_LOGIN = "user";
    private static final String DB_PASSWORD = "user";

    private static BlockingQueue<Connection> connections = new LinkedBlockingQueue<>();

    static {
        try {
            //loading of class
            Class.forName("org.h2.Driver");
            logger.info("Loading \"org.h2.Driver\" class.");
        } catch (ClassNotFoundException e) {
            logger.info("Could not load \"org.h2.Driver\" class.");
            throw new RuntimeException(e);
        }
        Connection connection;
        try {
            //getting connection from DriverManager and filling BlockingQueue<Connection> connections
            for (int i = 0; i < CONNECTION_NUMBER; i++) {
                connection = DriverManager.getConnection(JDBC_URL, DB_LOGIN, DB_PASSWORD);
                connections.add(connection);
                logger.debug(connection + "added.");
            }
        } catch (SQLException e) {
            logger.info("SQLException.");
            throw new RuntimeException(e);
        }

    }

    private ConnectionPool() {
    }

    static Connection connection;

    public synchronized static Connection getConnection() throws RuntimeException {
        try {
            //try get connection with 5 seconds waiting //��������� ������������
            connection = connections.poll(5, TimeUnit.SECONDS);
            logger.debug(connection + "added.");
        } catch (InterruptedException e) {
            logger.info("InterruptedException.");
            throw new RuntimeException(e);
        }

        //the case when there is no free connection
        if (connection == null) throw new RuntimeException("Connection is null");
        return connection;
    }

    /**
     * This method returns connection to BlockingQueue<Connection> connections
     *
     * @param connection for releasing
     * @throws RuntimeException
     */
    public synchronized static void releaseConnection(Connection connection) throws RuntimeException {
        try {
            //try to put connection with 5 seconds waiting
            connections.offer(connection, 5, TimeUnit.SECONDS);
            logger.debug(connection + " released.");
        } catch (InterruptedException e) {
            logger.info("InterruptedException.");
            throw new RuntimeException("cannot put connection in pool");
        }
    }
}
