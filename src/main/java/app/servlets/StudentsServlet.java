package app.servlets;

import app.entities.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class StudentsServlet extends MyServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Student> students = model.getStudents();
        req.setAttribute("students", students);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/students.jsp");
        requestDispatcher.forward(req, resp);
    }
}
