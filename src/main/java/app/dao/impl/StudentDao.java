package app.dao.impl;

import app.entities.Event;
import app.entities.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class StudentDao {
    private final Connection connection;

    public StudentDao(Connection connection) {
        this.connection = connection;
    }

    public List<Student> selectAll() {
        try {
            PreparedStatement ps = connection.prepareStatement("select * from STUDENT");
            ps.execute();
            ResultSet rs = ps.getResultSet();
            List<Student> students = new ArrayList<>();
            while (rs.next()) {
                Student student = new Student();

                student.setLastName(rs.getString(2));
                student.setName(rs.getString(3));
                student.setPatronomyc(rs.getString(4));
                student.setGender(rs.getString(5));
                student.setNationality(rs.getString(6));
                student.setPhone(rs.getString(7));
                student.setEmail(rs.getString(8));
                student.setParentPhone(rs.getString(9));
                student.setParentEmail(rs.getString(10));
                student.setDistrict(rs.getString(11));
                student.setCity(rs.getString(12));
                student.setAddress(rs.getString(13));
                student.setLiveType(rs.getString(14));
                student.setDormitory(rs.getString(15));
                student.setSirota(rs.getString(16));
                student.setOpekaemii(rs.getString(17));
                student.setWithOutOneParent(rs.getString(18));
                student.setChellenged1(rs.getString(19));
                student.setChellenged2(rs.getString(20));
                student.setChellenged3(rs.getString(21));
                student.setBigFamily(rs.getString(22));
                student.setChellengedParents(rs.getString(23));
                student.setReturned(rs.getString(24));
                student.setMerried(rs.getString(25));
                student.setHaveChild(rs.getString(26));
                student.setChildCount(rs.getString(27));
                student.setReligious(rs.getString(28));
                student.setReligion(rs.getString(29));
                student.setDressR(rs.getString(30));
                student.setOtherR(rs.getString(31));

                students.add(student);
            }
            return students;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void insert(Student student) {
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO STUDENT VALUES(default, " +
                    "?, ?, ?, ?, ?, " +
                    "?, ?, ?, ?, ?," +
                    " ?, ?, ?, ?, ?," +
                    " ?, ?, ?, ?, ?," +
                    " ?, ?, ?, ?, ?," +
                    " ?, ?, ?, ?, ?," +
                    " ?, ?, ?)");
            ps.setString(1, student.getLastName());
            ps.setString(2, student.getName());
            ps.setString(3, student.getPatronomyc());
            ps.setString(4, student.getGender());
            ps.setString(5, student.getNationality());
            ps.setString(6, student.getPhone());
            ps.setString(7, student.getEmail());
            ps.setString(8, student.getParentPhone());
            ps.setString(9, student.getParentEmail());
            ps.setString(10, student.getDistrict());
            ps.setString(11, student.getCity());
            ps.setString(12, student.getAddress());
            ps.setString(13, student.getLiveType());
            ps.setString(14, student.getDormitory());
            ps.setString(15, student.getSirota());
            ps.setString(16, student.getOpekaemii());
            ps.setString(17, student.getWithOutOneParent());
            ps.setString(18, student.getChellenged1());
            ps.setString(19, student.getChellenged2());
            ps.setString(20, student.getChellenged3());
            ps.setString(21, student.getBigFamily());
            ps.setString(22, student.getChellengedParents());
            ps.setString(23, student.getReturned());
            ps.setString(24, student.getMerried());
            ps.setString(25, student.getHaveChild());
            ps.setString(26, student.getChildCount());
            ps.setString(27, student.getReligious());
            ps.setString(28, student.getReligion());
            ps.setString(29, student.getDressR());
            ps.setString(30, student.getOtherR());
            ps.setString(31, "-");
            ps.setString(32, "-");
            ps.setString(33, "-");
            ps.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
