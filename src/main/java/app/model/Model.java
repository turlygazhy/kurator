package app.model;

import app.dao.DaoFactory;
import app.dao.impl.EventDao;
import app.dao.impl.KuratorDao;
import app.dao.impl.NotificationDao;
import app.dao.impl.UserDao;
import app.entities.*;

import java.util.Arrays;
import java.util.List;

public class Model {
    private static Model instance = new Model();

    private DaoFactory factory = DaoFactory.getFactory();
    private KuratorDao kuratorDao = factory.getKuratorDao();
    private EventDao eventDao = factory.getEventDao();
    private UserDao userDao = factory.getUserDao();
    private NotificationDao notificationDao = factory.getNotificationDao();
    private LoginedUser loginedUser;

    public static Model getInstance() {
        return instance;
    }

    private Model() {
    }

    public List<Student> getStudents() {
        return Arrays.asList(); // TODO: 19.04.20 take from DB
    }

    public List<Kurator> getKurators() {
        return kuratorDao.selectAll();
    }

    public void addKurator(Kurator kurator) {
        kuratorDao.insert(kurator);
    }

    public LoginedUser getUser(String username) {
        return userDao.select(username);
    }

    public LoginedUser getLoginedUser() {
        return loginedUser;
    }

    public void setLoginedUser(LoginedUser loginedUser) {
        this.loginedUser = loginedUser;
    }

    public void deleteKurator(int deleteId) {
        kuratorDao.delete(deleteId);
    }

    public List<Event> getEvents() {
        return eventDao.selectAll();
    }

    public void addEvent(Event event) {
        eventDao.insert(event);
    }

    public void deleteEvent(int id) {
        eventDao.delete(id);
    }

    public List<Notification> getNotifications() {
        return notificationDao.selectAll();
    }
}
