package uploads;

import java.sql.Date;
import java.sql.Timestamp;

public class imageDTO {
    private int articleNum;
    private String writer;
    private String description;
    private Timestamp date;

    public imageDTO(int articleNum, String writer, String description, Timestamp date) {
        this.articleNum = articleNum;
        this.writer = writer;
        this.description = description;
        this.date = date;
    }

    public int getArticleNum() {
        return articleNum;
    }

    public void setArticleNum(int articleNum) {
        this.articleNum = articleNum;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }
}
