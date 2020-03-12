package app.entities;

public class Notification {
    private int id;
    private String topic;
    private String text;

    public Notification() {
    }

    public Notification(int id, String topic, String text) {
        this.id = id;
        this.topic = topic;
        this.text = text;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
