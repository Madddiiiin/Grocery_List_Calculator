Create table if not exists Tag(
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

Create table if not exists Grocery(
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

Create table if not exists Measurement(
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

Create table if not exists Meal(
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

Create table if not exists Ingredient(
    id int NOT NULL AUTO_INCREMENT,
    meal_id int NOT NULL,
    grocery_id int NOT NULL,
    CONSTRAINT ingredient_meal_fk FOREIGN KEY (meal_id) REFERENCES Meal(id) ON DELETE CASCADE,
    CONSTRAINT ingredient_grocery_fk FOREIGN KEY (grocery_id) REFERENCES Grocery(id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

Create table if not exists Amount(
    ingredient_id int NOT NULL,
    quantity float NOT NULL,
    measurement_id int NOT NULL,
    CONSTRAINT amount_ingredient_fk FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id) ON DELETE CASCADE,
    CONSTRAINT amount_measurement_fk FOREIGN KEY (measurement_id) REFERENCES Measurement(id) ON DELETE CASCADE
);

Create table if not exists Tag_List(
    meal_id int NOT NULL,
    tag_id int NOT NULL,
    CONSTRAINT tag_list_meal FOREIGN KEY (meal_id) REFERENCES Meal(id) ON DELETE CASCADE,
    CONSTRAINT tag_list_tag_fk FOREIGN KEY (tag_id) REFERENCES Tag(id) ON DELETE CASCADE
);