package app.entities;

public class Student {
    private String lastname;
    private String firstname;
    private String patronymic;
    private String group;
    private String socialCategory;
    private String address;
    private String phone;

    public Student(String lastname, String firstname, String patronymic, String group, String socialCategory, String address, String phone) {
        this.lastname = lastname;
        this.firstname = firstname;
        this.patronymic = patronymic;
        this.group = group;
        this.socialCategory = socialCategory;
        this.address = address;
        this.phone = phone;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getPatronymic() {
        return patronymic;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getSocialCategory() {
        return socialCategory;
    }

    public void setSocialCategory(String socialCategory) {
        this.socialCategory = socialCategory;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
