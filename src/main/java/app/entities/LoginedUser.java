package app.entities;

import java.util.Arrays;

public class LoginedUser {
    private int id;
    private String username;
    private String password;
    private String fullname;
    private String group;
    private UserType userType;

    public LoginedUser() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public void setUserType(int typeId) {
        this.userType = UserType.getUserTypeById(typeId);
    }

    public String getTitle() {
        switch (userType) {
            case KURATOR:
                return "Куратор группы: " + group;
            case ZAM_DEKANA_PO_VR:
                return "Зам декана по ВР";
        }
        throw new RuntimeException("Switch did not return title");
    }

    public enum UserType {
        KURATOR(1),
        ZAM_DEKANA_PO_VR(2);

        private final int typeId;

        UserType(int typeId) {
            this.typeId = typeId;
        }

        public static UserType getUserTypeById(int typeId) {
            return Arrays.stream(values())
                    .filter(value -> value.getTypeId() == typeId)
                    .findFirst()
                    .orElseThrow(() -> new RuntimeException("There was no user type for id " + typeId));
        }

        public int getTypeId() {
            return typeId;
        }
    }
}
