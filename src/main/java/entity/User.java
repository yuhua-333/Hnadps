package entity;
import java.io.Serializable;
public class User implements Serializable{
	private static final long serialVersionUID=1L;
    private Integer Uid;
    private String Name;
    private String Password;
    private String Phone;
    private String idNum;
    private Integer state;
    public Integer getUid() {
    	return Uid;
    }
    public void setUid(Integer Uid) {
    	this.Uid=Uid;
    }
    public String getName() {
    	return Name;
    }
    public void setName(String Name) {
    	this.Name=Name;
    }
    public String getPassword() {
    	return Password;
    }
    public void setPassword(String Password) {
    	this.Password=Password;
    }
    public String getPhone() {
    	return Phone;
    }
    public void setPhone(String Phone) {
    	this.Phone=Phone;
    }
    public String getidNum() {
    	return idNum;
    }
    public void setidNum(String idNum) {
    	this.idNum=idNum;
    }
    public Integer getstate() {
      	return state;
      }
    public void setstate(Integer state) {
      	this.state=state;
      }
}
