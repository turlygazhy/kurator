package app.entities;

public class LoginedUser {
    private int id;
    private String username;
    private String password;
    private String fullname;
    private String group;

    public LoginedUser() {
    }

    public LoginedUser(int id, String username, String password, String fullname, String group) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.group = group;
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
}
