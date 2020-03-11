package app.servlets;

import app.entities.LoginedUser;
import app.model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class IndexServlet extends MyServlet {

    public static final String LOGINED_USER_ATTRIBUTE = "loginedUser";
    public static final String LOGIN_ERROR = "loginError";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("uname");
        String password = req.getParameter("psw");
        try {
            LoginedUser user = model.getUser(username);
            if (!user.getPassword().equals(password)) {
                throw new RuntimeException("not correct password");
            }
            req.setAttribute(LOGINED_USER_ATTRIBUTE, user);
            model.setLoginedUser(user);
            doGet(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute(LOGIN_ERROR, true);
            req.getRequestDispatcher("views/login.jsp").forward(req, resp);
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LoginedUser loginedUser = model.getLoginedUser();
        RequestDispatcher requestDispatcher;
        if (loginedUser == null) {
            requestDispatcher = req.getRequestDispatcher("views/login.jsp");
        } else {
            req.setAttribute(LOGINED_USER_ATTRIBUTE, loginedUser);
            requestDispatcher = req.getRequestDispatcher("index.jsp");
        }
        requestDispatcher.forward(req, resp);
    }
}
