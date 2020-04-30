package app.model;

import app.dao.DaoFactory;
import app.dao.impl.*;
import app.entities.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Paths;
import java.util.*;

public class Model {
    private static Model instance = new Model();

    private DaoFactory factory = DaoFactory.getFactory();
    private KuratorDao kuratorDao = factory.getKuratorDao();
    private EventDao eventDao = factory.getEventDao();
    private UserDao userDao = factory.getUserDao();
    private NotificationDao notificationDao = factory.getNotificationDao();
    private StudentDao studentDao = factory.getStudentDao();
    private LoginedUser loginedUser;

    public static Model getInstance() {
        return instance;
    }

    private Model() {
    }

    public List<Student> getStudents() {
        return studentDao.selectAll();
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

    public List<String> getNationalities() {
        try {
            URL res = getClass().getClassLoader().getResource("nationalities.txt");
            File file = Paths.get(res.toURI()).toFile();
            List<String> result = new ArrayList<>();
            Scanner scanner = new Scanner(file);
            while (scanner.hasNextLine()) {
                result.add(scanner.nextLine());
            }
            return result;
        } catch (FileNotFoundException | URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    public List<String> getCountries() {
        List<String> result = new ArrayList<>();
        result.add("Kazakhstan");
        String[] locales = Locale.getISOCountries();

        for (String countryCode : locales) {
            Locale obj = new Locale("", countryCode);
            result.add(obj.getDisplayCountry());
        }
        return result;
    }

    public void addStudent(Student student) {
        studentDao.insert(student);
    }

    public List<Student> findStudents(Student student) {
        return studentDao.selectAll(student);
    }

    public List<String> getMyDocuments() {
        return null;// TODO: 01.05.20  
    }
}
