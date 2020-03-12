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
        return Arrays.asList(
                new Student("Колесников", "Май", "Петрович", "ИСМ-18-2", "социальная категория", "249053, г. Каратузское, ул. Ольховская 5-я, дом 99, квартира 96", "+7 (933) 484-39-53"),
                new Student("Богданов", "Панкратий", "Кимович", "ИСМ-18-2", "социальная категория", "453491, г. Сочи, ул. Хапиловская 2-я, дом 1, квартира 352", "+7 (972) 775-64-45"),
                new Student("Рыбаков", "Руслан", "Романович", "ИСМ-18-2", "социальная категория", "242503, г. Владивосток, ул. Костычева 1-й пер, дом 33, квартира 41", "+7 (935) 925-17-85"),
                new Student("Ефимов", "Иннокентий", "Тарасович", "ИСМ-18-2", "социальная категория", "153511, г. Юрино, ул. Колхидская, дом 32, квартира 266", "+7 (907) 739-58-31"),
                new Student("Воробьёв", "Августин", "Пантелеймонович", "ИСМ-18-2", "социальная категория", "392971, г. Серпухов, ул. Жебинский б-р, дом 80, квартира 433", "+7 (901) 834-88-12")
        );
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
