package app.servlets;

import app.entities.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ReportsServlet extends MyServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        Student student = new Student();
        student.setDistrict(request.getParameter("district"));
        student.setLiveType(request.getParameter("liveType"));
        student.setDormitory(request.getParameter("dormitory"));
        student.setSirota(request.getParameter("sirota"));
        student.setOpekaemii(request.getParameter("opekaemii"));
        student.setWithOutOneParent(request.getParameter("withOutOneParent"));
        student.setChellenged1(request.getParameter("chellenged1"));
        student.setChellenged2(request.getParameter("chellenged2"));
        student.setChellenged3(request.getParameter("chellenged3"));
        student.setBigFamily(request.getParameter("bigFamily"));
        student.setChellengedParents(request.getParameter("chellengedParents"));
        student.setReturned(request.getParameter("returned"));
        student.setMerried(request.getParameter("merried"));
        List<Student> students = model.findStudents(student);
        request.setAttribute("students", students);
        doGet(request, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/reports.jsp");
        requestDispatcher.forward(req, resp);
    }
}
