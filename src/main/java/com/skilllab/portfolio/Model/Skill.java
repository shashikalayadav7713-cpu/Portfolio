package com.skilllab.portfolio.Model;

public  class Skill{

    private String name;
    private String Category;

    public Skill(String name,String Category){

        this.name = name;
        this.Category =Category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }




}
