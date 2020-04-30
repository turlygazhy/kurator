package app.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class MyDocumentsServlet extends MyServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> myDocuments = model.getMyDocuments();
        req.setAttribute("myDocuments", myDocuments);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/myDocuments.jsp");
        requestDispatcher.forward(req, resp);
    }
}
