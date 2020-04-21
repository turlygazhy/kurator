package app.servlets;

import app.entities.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AddStudentServlet extends MyServlet {

    public static final String NATIONALITIES_ATTRIBUTE_NAME = "nationalities";
    public static final String COUNTRIES_ATTRIBUTE_NAME = "countries";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Student student = new Student();
        student.setLastName(request.getParameter("lastname"));
        student.setName(request.getParameter("name"));
        student.setPatronomyc(request.getParameter("patronymic"));
        student.setGender(request.getParameter("gender"));
        student.setNationality(request.getParameter("nationality"));
        student.setPhone(request.getParameter("phone"));
        student.setEmail(request.getParameter("email"));
        student.setParentPhone(request.getParameter("parentPhone"));
        student.setParentEmail(request.getParameter("parentEmail"));
        student.setDistrict(request.getParameter("district"));
        student.setCity(request.getParameter("city"));
        student.setAddress(request.getParameter("address"));
        student.setLiveType(request.getParameter("liveType"));
        student.setDormitory(request.getParameter("dormitory"));

//        student.setFilePropiska(request.getParameter("filePropiska"));
        // TODO: 22.04.20 take files
        student.setSitota(request.getParameter("sirota"));
        student.setOpekaemii(request.getParameter("opekaemii"));
        student.setWithOutOneParent(request.getParameter("withOutOneParent"));
        student.setChellenged1(request.getParameter("chellenged1"));
        student.setChellenged2(request.getParameter("chellenged2"));
        student.setChellenged3(request.getParameter("chellenged3"));
        student.setBigFamily(request.getParameter("bigFamily"));
        student.setChellengedParents(request.getParameter("chellengedParents"));
        student.setReturned(request.getParameter("returned"));
        student.setMerried(request.getParameter("merried"));
        student.setHaveChild(request.getParameter("haveChild"));
        student.setChildCount(request.getParameter("childCount"));
        student.setReligious(request.getParameter("religious"));
        student.setReligion(request.getParameter("religion"));
        student.setDressR(request.getParameter("dressR"));
        student.setOtherR(request.getParameter("otherR"));
        model.addStudent(student);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> nationalities = model.getNationalities();
        List<String> countries = model.getCountries();
        request.setAttribute(NATIONALITIES_ATTRIBUTE_NAME, nationalities);
        request.setAttribute(COUNTRIES_ATTRIBUTE_NAME, countries);
        request.getRequestDispatcher("views/addStudent.jsp").forward(request, response);
    }
}
