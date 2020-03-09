package app.dao.impl;

import java.sql.Connection;

public class KuratorDao {
    private final Connection connection;

    public KuratorDao(Connection connection) {
        this.connection = connection;
    }
}
