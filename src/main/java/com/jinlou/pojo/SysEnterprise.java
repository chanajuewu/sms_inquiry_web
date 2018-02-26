package com.jinlou.pojo;

import java.io.Serializable;
import java.util.Date;

public class SysEnterprise implements Serializable{
	
    /**
	 * 企业管理
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private Integer oid;

    private String cityCode;

    private Integer code;

    private String name;

    private String namespell;

    private String contacts;

    private String phone;

    private String openid;

    private Integer isuse;

    private String bindtime;

    private Date createtime;

    private Date svaliddate;

    private Date evaliddate;

    private Integer optypeid;

    private Date optime;

    private Integer opadminId;

    private Integer statusid;

    private Date validdate;

    private String notes;

    private String password;
    
    private String checkcode;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode == null ? null : cityCode.trim();
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNamespell() {
        return namespell;
    }

    public void setNamespell(String namespell) {
        this.namespell = namespell == null ? null : namespell.trim();
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts == null ? null : contacts.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid == null ? null : openid.trim();
    }

    public Integer getIsuse() {
        return isuse;
    }

    public void setIsuse(Integer isuse) {
        this.isuse = isuse;
    }

    public String getBindtime() {
        return bindtime;
    }

    public void setBindtime(String bindtime) {
        this.bindtime = bindtime == null ? null : bindtime.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getSvaliddate() {
        return svaliddate;
    }

    public void setSvaliddate(Date svaliddate) {
        this.svaliddate = svaliddate;
    }

    public Date getEvaliddate() {
        return evaliddate;
    }

    public void setEvaliddate(Date evaliddate) {
        this.evaliddate = evaliddate;
    }

    public Integer getOptypeid() {
        return optypeid;
    }

    public void setOptypeid(Integer optypeid) {
        this.optypeid = optypeid;
    }

    public Date getOptime() {
        return optime;
    }

    public void setOptime(Date optime) {
        this.optime = optime;
    }

    public Integer getOpadminId() {
        return opadminId;
    }

    public void setOpadminId(Integer opadminId) {
        this.opadminId = opadminId;
    }

    public Integer getStatusid() {
        return statusid;
    }

    public void setStatusid(Integer statusid) {
        this.statusid = statusid;
    }

    public Date getValiddate() {
        return validdate;
    }

    public void setValiddate(Date validdate) {
        this.validdate = validdate;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes == null ? null : notes.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

	public String getCheckcode() {
		return checkcode;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
    
}