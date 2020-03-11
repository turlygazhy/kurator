package app.entities;

public class Event {
    private int id;
    private String topic;
    private String text;

    public Event() {
    }

    public Event(int id, String topic, String text) {
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }
}
