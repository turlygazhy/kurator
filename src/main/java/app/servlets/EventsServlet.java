package app.servlets;

import app.entities.Event;
import app.entities.Kurator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class EventsServlet extends MyServlet {

    public static final String EVENTS_ATTRIBUTE = "events";

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Event> events = model.getEvents();
        req.setAttribute(EVENTS_ATTRIBUTE, events);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/events.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String deleteId = req.getParameter("delete");
        if (deleteId != null) {
            model.deleteEvent(Integer.parseInt(deleteId));
            doGet(req, resp);
            return;
        }
        String topic = req.getParameter("topic");
        String report = req.getParameter("report");
        model.addEvent(new Event(topic, report));
        doGet(req, resp);
    }
}
