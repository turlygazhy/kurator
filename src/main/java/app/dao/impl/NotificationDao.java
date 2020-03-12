package app.dao.impl;

import app.entities.Notification;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NotificationDao {
    private final Connection connection;

    public NotificationDao(Connection connection) {
        this.connection = connection;
    }

    public List<Notification> selectAll() {
        try {
            PreparedStatement ps = connection.prepareStatement("select * from notification");
            ps.execute();
            ResultSet rs = ps.getResultSet();
            List<Notification> notifications = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt(1);
                String topic = rs.getString(2);
                String text = rs.getString(3);
                notifications.add(new Notification(id, topic, text));
            }
            return notifications;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
