package app.servlets;

import app.entities.Notification;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class NotificationsServlet extends MyServlet {

    public static final String NOTIFICATIONS_ATTRIBUTE = "notifications";

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Notification> notifications = model.getNotifications();
        req.setAttribute(NOTIFICATIONS_ATTRIBUTE, notifications);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/notifications.jsp");
        requestDispatcher.forward(req, resp);
    }
}
