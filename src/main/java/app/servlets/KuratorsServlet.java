package app.servlets;

import app.dao.DaoFactory;
import app.dao.impl.KuratorDao;
import app.entities.Student;
import app.model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class KuratorsServlet extends HttpServlet {
    private DaoFactory factory = DaoFactory.getFactory();
    private KuratorDao kuratorDao = factory.getKuratorDao();

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Model model = Model.getInstance();
        model.getKurators();
//        List<Student> students = model.getStudents();
//        req.setAttribute("students", students);
//
//        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/students.jsp");
//        requestDispatcher.forward(req, resp);
    }
}
