package app.model;

import app.entities.Student;

import java.util.Arrays;
import java.util.List;

public class Model {
    private static Model instance = new Model();

    public static Model getInstance() {
        return instance;
    }

    private Model() {
    }

    public List<Student> list() {
        // TODO: 01.03.20 need to get it from DB
        return Arrays.asList(
                new Student("фамилия1", "имя1", "отчество1", "группа1", "социальная категория", "адрес1", "123456"),
                new Student("фамилия2", "имя2", "отчество2", "группа1", "социальная категория", "адрес2", "123456"),
                new Student("фамилия3", "имя3", "отчество3", "группа1", "социальная категория", "адрес3", "123456"),
                new Student("фамилия4", "имя4", "отчество4", "группа1", "социальная категория", "адрес4", "123456"),
                new Student("фамилия5", "имя5", "отчество5", "группа1", "социальная категория", "адрес5", "123456")
        );
    }
}
