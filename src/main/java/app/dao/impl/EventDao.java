package app.dao.impl;

import app.entities.Event;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EventDao {
    private final Connection connection;

    public EventDao(Connection connection) {
        this.connection = connection;
    }

    public List<Event> selectAll() {
        try {
            PreparedStatement ps = connection.prepareStatement("select * from event");
            ps.execute();
            ResultSet rs = ps.getResultSet();
            List<Event> events = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt(1);
                String topic = rs.getString(2);
                String text = rs.getString(3);
                events.add(new Event(id, topic, text));
            }
            return events;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
