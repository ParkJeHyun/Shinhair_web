package kr.shin.server.artifacts;

/**
 * Created by Administrator on 2016-06-01.
 */
public class Book {
    private Integer id;
    private String name;
    private String writer;
    private String price;
    private Integer genre;
    private String publisher;
    private Integer cnt;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getWriter() {
        return writer;
    }
    public void setWriter(String writer) {
        this.writer = writer;
    }
    public String getPrice() {
        return price;
    }
    public void setPrice(String price) {
        this.price = price;
    }
    public Integer getGenre() {
        return genre;
    }
    public void setGenre(Integer genre) {
        this.genre = genre;
    }
    public String getPublisher() {
        return publisher;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public Integer getCnt() {
        return cnt;
    }
    public void setCnt(Integer cnt) {
        this.cnt = cnt;
    }

}
