package bzcard.ms.domain;

public class Member {

  protected int no;
  protected String email;
  protected String name;
  protected String password;
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  
  
  @Override
  public String toString() {
    return "Member [no=" + no + ", email=" + email + ", name=" + name + ", password=" + password
        + "]";
  }
  
  
  
}
