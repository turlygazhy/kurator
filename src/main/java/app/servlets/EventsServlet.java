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
}
