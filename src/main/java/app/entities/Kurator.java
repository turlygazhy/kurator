package app.entities;

public class Kurator {
    private int id;
    private String text;
    private String topic;

    public Kurator(String topic, String text) {
        this.text = text;
        this.topic = topic;
    }

    public Kurator(int id, String topic, String text) {
        this.id = id;
        this.text = text;
        this.topic = topic;
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
