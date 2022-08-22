package entity;

public class Ord {
    private Integer oid;
    private Integer uid;
    private String name;

    public Ord(Integer oid, Integer uid, String name) {
        super();
        this.oid = oid;
        this.uid = uid;
        this.name = name;
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
}
