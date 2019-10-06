package com.datapack;

public class Data {
    private int total;
    private String picture;

    public Data() {
    }

    public Data(int total, String picture) {
        this.total = total;
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Data{" +
                "total=" + total +
                ", picture=" + picture +
                '}';
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

}
