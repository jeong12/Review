package bzcard.ms.domain;

public class Bzcard {

  protected int bcno;
  protected int mno;
  protected String mtel;
  protected String name;
  protected String tel;
  protected String fax;
  protected String email;
  protected String memo;
  public int getBcno() {
    return bcno;
  }
  public void setBcno(int bcno) {
    this.bcno = bcno;
  }
  public int getMno() {
    return mno;
  }
  public void setMno(int mno) {
    this.mno = mno;
  }
  public String getMtel() {
    return mtel;
  }
  public void setMtel(String mtel) {
    this.mtel = mtel;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getTel() {
    return tel;
  }
  public void setTel(String tel) {
    this.tel = tel;
  }
  public String getFax() {
    return fax;
  }
  public void setFax(String fax) {
    this.fax = fax;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getMemo() {
    return memo;
  }
  public void setMemo(String memo) {
    this.memo = memo;
  }
  @Override
  public String toString() {
    return "bzcard [bcno=" + bcno + ", mno=" + mno + ", mtel=" + mtel + ", name=" + name + ", tel="
        + tel + ", fax=" + fax + ", email=" + email + ", memo=" + memo + "]";
  }
  
  
  
  
}
