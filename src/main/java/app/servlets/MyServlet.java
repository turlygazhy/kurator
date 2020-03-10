package app.servlets;

import app.model.Model;

import javax.servlet.http.HttpServlet;

public class MyServlet extends HttpServlet {
    protected Model model = Model.getInstance();
}
