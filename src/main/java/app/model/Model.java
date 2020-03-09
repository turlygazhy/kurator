package app.model;

import app.dao.DaoFactory;
import app.dao.impl.KuratorDao;
import app.entities.Kurator;
import app.entities.Student;

import java.util.Arrays;
import java.util.List;

public class Model {
    private static Model instance = new Model();

    private DaoFactory factory = DaoFactory.getFactory();
    private KuratorDao kuratorDao = factory.getKuratorDao();

    public static Model getInstance() {
        return instance;
    }

    private Model() {
    }

    public List<Student> getStudents() {
        // TODO: 09.03.20 fill real names
        return Arrays.asList(
                new Student("фамилия1", "имя1", "отчество1", "группа1", "социальная категория", "адрес1", "123456"),
                new Student("фамилия2", "имя2", "отчество2", "группа1", "социальная категория", "адрес2", "123456"),
                new Student("фамилия3", "имя3", "отчество3", "группа1", "социальная категория", "адрес3", "123456"),
                new Student("фамилия4", "имя4", "отчество4", "группа1", "социальная категория", "адрес4", "123456"),
                new Student("фамилия5", "имя5", "отчество5", "группа1", "социальная категория", "адрес5", "123456")
        );
    }

    public List<Kurator> getKurators() {
        return kuratorDao.selectAll();
    }

    public void addKurator(Kurator kurator) {
        kuratorDao.insert(kurator);
    }
}
