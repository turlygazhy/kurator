package app.servlets;

import app.entities.Kurator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class KuratorsServlet extends MyServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String deleteId = req.getParameter("delete");
        if (deleteId != null) {
            model.deleteKurator(Integer.parseInt(deleteId));
            doGet(req, resp);
            return;
        }
        String topic = req.getParameter("topic");
        String report = req.getParameter("report");
        model.addKurator(new Kurator(topic, report));
        doGet(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Kurator> kurators = model.getKurators();
        req.setAttribute("kurators", kurators);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/kurators.jsp");
        requestDispatcher.forward(req, resp);
    }
}
