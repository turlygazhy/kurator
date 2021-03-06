package app.dao.impl;

import app.entities.LoginedUser;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private final Connection connection;

    public UserDao(Connection connection) {
        this.connection = connection;
    }

    public LoginedUser select(String username) {
        try {
            PreparedStatement ps = connection.prepareStatement("select * from user where username=?");
            ps.setString(1, username);
            ps.execute();
            ResultSet rs = ps.getResultSet();
            rs.next();

            LoginedUser loginedUser = new LoginedUser();
            loginedUser.setId(rs.getInt(1));
            loginedUser.setUsername(username);
            loginedUser.setPassword(rs.getString(3));
            loginedUser.setFullname(rs.getString(4));
            loginedUser.setGroup(rs.getString(5));
            loginedUser.setUserType(rs.getInt(6));
            return loginedUser;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
