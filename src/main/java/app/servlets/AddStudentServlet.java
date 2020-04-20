package app.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AddStudentServlet extends MyServlet {

    public static final String NATIONALITIES_ATTRIBUTE_NAME = "nationalities";
    public static final String COUNTRIES_ATTRIBUTE_NAME = "countries";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> nationalities = model.getNationalities();
        List<String> countries = model.getCountries();
        request.setAttribute(NATIONALITIES_ATTRIBUTE_NAME, nationalities);
        request.setAttribute(COUNTRIES_ATTRIBUTE_NAME, countries);
        request.getRequestDispatcher("views/addStudent.jsp").forward(request, response);
    }
}
