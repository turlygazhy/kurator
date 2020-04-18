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

    @Override
    public String toString() {
        return "Student{" +
                "lastname='" + lastname + '\'' +
                ", firstname='" + firstname + '\'' +
                ", patronymic='" + patronymic + '\'' +
                ", group='" + group + '\'' +
                ", socialCategory='" + socialCategory + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }

    public enum Gender {
        MALE(1), FEMALE(2);

        private final int genderId;

        Gender(int genderId) {
            this.genderId = genderId;
        }
    }

    public enum LivingType {
        WITH_PARENTS(1), WITH_RELATIVES(2), RENT(3), DORMITORY(4);

        private final int livingTypeId;

        LivingType(int livingTypeId) {
            this.livingTypeId = livingTypeId;
        }
    }

    public enum DormitoryType {
        DORMITORY_ONE(1), ARMANDASTAR_ORDASY(2), SERPINDESTER_ORDASY(3), MGTK(4);

        private final int dormitoryId;

        DormitoryType(int dormitoryId) {
            this.dormitoryId = dormitoryId;
        }
    }

    public enum SocialCategory {
        WITHOUT_PARENTS(1), WITHOUT_ONE_PARENT(2), INVALID_1(3),
        INVALID_2(4), INVALID_3(5), BIG_FAMILY(6);

        private final int socialCategoryId;

        SocialCategory(int socialCategoryId) {
            this.socialCategoryId = socialCategoryId;
        }
    }
}
