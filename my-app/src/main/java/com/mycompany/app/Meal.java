package com.mycompany.app;

import java.util.List;

public class Meal {

    public String name;
    public List<Ingredient> ingredients;
    public List<Tag> tags;

    public Meal (String name, List<Ingredient> ingredients, List<Tag> tags) {
        this.name = name;
        this.ingredients = ingredients;
        this.tags = tags;
    }

}