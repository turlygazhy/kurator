package app.dao.impl;

import app.entities.Kurator;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class KuratorDao {
    private final Connection connection;

    public KuratorDao(Connection connection) {
        this.connection = connection;
    }

    public List<Kurator> selectAll() {
        try {
            PreparedStatement ps = connection.prepareStatement("select * from kurator");
            ps.execute();
            ResultSet rs = ps.getResultSet();
            List<Kurator> kurators = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt(1);
                String topic = rs.getString(2);
                String text = rs.getString(3);
                kurators.add(new Kurator(id, topic, text));
            }
            return kurators;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void insert(Kurator kurator) {
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO kurator VALUES(default, ?, ?)");
            ps.setString(1, kurator.getTopic());
            ps.setString(2, kurator.getText());
            ps.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(int deleteId) {
        try {
            PreparedStatement ps = connection.prepareStatement("DELETE FROM kurator WHERE ID=?");
            ps.setInt(1, deleteId);
            ps.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
