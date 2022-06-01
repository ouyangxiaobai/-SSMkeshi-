package com.ian.media.model;

public class Floatimg {
    private Integer id;

    private Integer pass;

    private Integer position;
	private String linkurl;

    private String imgurl;
    
    private Integer paixu;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getLinkurl() {
    	return linkurl;
    }
    
    public void setLinkurl(String linkurl) {
    	this.linkurl = linkurl;
    }
    
    public String getImgurl() {
    	return imgurl;
    }
    
    public void setImgurl(String imgurl) {
    	this.imgurl = imgurl;
    }

    public Integer getPass() {
        return pass;
    }

    public void setPass(Integer pass) {
        this.pass = pass;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public Integer getPaixu() {
        return paixu;
    }

    public void setPaixu(Integer paixu) {
        this.paixu = paixu;
    }
}