package kr.shin.server.artifacts;

/**
 * Created by Administrator on 2016-06-19.
 */
public class Query {
    Integer userKey;
    Integer designerKey;
    String date;

    public static Query newInstance(Integer designerKey, String date) {
        return new Query(designerKey, date);
    }

    public Query(Integer designerKey, String date){
        this.designerKey = designerKey;
        this.date = date;
    }

    public Integer getUserKey() {
        return userKey;
    }

    public void setUserKey(Integer userKey) {
        this.userKey = userKey;
    }

    public Integer getDesignerKey() {
        return designerKey;
    }

    public void setDesignerKey(Integer designerKey) {
        this.designerKey = designerKey;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
