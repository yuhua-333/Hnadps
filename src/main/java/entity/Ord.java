package entity;

public class Ord {
    private Integer oid;
    private Integer uid;
    private String name;

    private String time;

    private String state;

    public Ord(Integer oid, Integer uid, String name, String time, String state) {
        super();
        this.oid = oid;
        this.uid = uid;
        this.name = name;
        this.time = time;
        this.state = state;
    }

    public Ord() {
        super();
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

}
