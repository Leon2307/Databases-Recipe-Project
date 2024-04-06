CREATE TABLE
    Recipes (
        id INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        rating FLOAT,
        cooking_time INT NOT NULL
    );

CREATE TABLE
    Images (
        id INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
        recipe_id INT NOT NULL,
        FOREIGN KEY (recipe_id) REFERENCES Recipes (id) ON DELETE CASCADE,
        path VARCHAR(300)
    );

CREATE TABLE
    Instructions (
        id INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
        instructions VARCHAR(300) NOT NULL,
        rec_id INT NOT NULL,
        FOREIGN KEY (rec_id) REFERENCES Recipes (id) ON DELETE CASCADE
    );

CREATE TABLE
    Hardware (
        id INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
        name VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Hardware_Instructions (
        hw_id INT NOT NULL,
        inst_id INT NOT NULL,
        PRIMARY KEY (hw_id, inst_id),
        FOREIGN KEY (hw_id) REFERENCES Hardware (id) ON DELETE CASCADE,
        FOREIGN KEY (inst_id) REFERENCES Instructions (id) ON DELETE CASCADE
    );

CREATE TABLE
    RecipeCategories (
        id INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
        name VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Recipes_RecipeCategories (
        rec_id INT NOT NULL,
        cat_id INT NOT NULL,
        PRIMARY KEY (rec_id, cat_id),
        FOREIGN KEY (rec_id) REFERENCES Recipes (id) ON DELETE CASCADE,
        FOREIGN KEY (cat_id) REFERENCES RecipeCategories (id) ON DELETE CASCADE
    );

CREATE TABLE
    Ingredients (
        id INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
        name VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Recipes_Ingredients (
        rec_id INT NOT NULL,
        ing_id INT NOT NULL,
        PRIMARY KEY (rec_id, ing_id),
        FOREIGN KEY (rec_id) REFERENCES Recipes (id) ON DELETE CASCADE,
        FOREIGN KEY (ing_id) REFERENCES Ingredients (id) ON DELETE CASCADE,
        amount INTEGER NOT NULL,
        amount_unit VARCHAR(100) NOT NULL,
        optional BIT NOT NULL
    );

CREATE TABLE
    Alternative_Ingredients (
        ing_id INT NOT NULL,
        alt_id INT NOT NULL,
        PRIMARY KEY (ing_id, alt_id),
        FOREIGN KEY (ing_id) REFERENCES Ingredients (id) ON DELETE NO ACTION,
        FOREIGN KEY (alt_id) REFERENCES Ingredients (id) ON DELETE NO ACTION,
        amount INTEGER NOT NULL,
        amount_unit VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Allergies (
        id INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
        name VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Ingredients_Allergies (
        ing_id INT NOT NULL,
        all_id INT NOT NULL,
        PRIMARY KEY (ing_id, all_id),
        FOREIGN KEY (ing_id) REFERENCES Ingredients (id) ON DELETE CASCADE,
        FOREIGN KEY (all_id) REFERENCES Allergies (id) ON DELETE CASCADE
    );

CREATE TABLE
    IngredientCategories (
        id INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
        name VARCHAR(100) NOT NULL
    );

CREATE TABLE
    Ingredients_IngredientCategories (
        ing_id INT NOT NULL,
        cat_id INT NOT NULL,
        PRIMARY KEY (ing_id, cat_id),
        FOREIGN KEY (ing_id) REFERENCES Ingredients (id) ON DELETE CASCADE,
        FOREIGN KEY (cat_id) REFERENCES IngredientCategories (id) ON DELETE CASCADE
    );