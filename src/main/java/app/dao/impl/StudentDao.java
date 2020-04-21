package app.dao.impl;

import app.entities.Student;

import java.sql.Connection;
import java.util.Arrays;
import java.util.List;

public class StudentDao {
    private final Connection connection;

    public StudentDao(Connection connection) {
        this.connection = connection;
    }

    public List<Student> selectAll() {
        return Arrays.asList();// TODO: 22.04.20
    }

    public void insert(Student student) {
        // TODO: 22.04.20
    }
}
