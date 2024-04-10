-- Fetch all recipes
SELECT
    *
FROM
    Recipes;

-- Fetch all recipes with a rating over 4.0
SELECT
    *
FROM
    Recipes
WHERE
    rating > 4.0;

-- Fetch all recipes possible with given ingredients (from ing_id list)
SELECT DISTINCT
    R.*
FROM
    Recipes R
    JOIN Recipes_Ingredients RI ON R.id = RI.rec_id
WHERE
    RI.ing_id IN (
        2,
        3,
        7,
        8,
        10,
        11,
        12,
        13,
        14,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23
    );

-- Fetch a recipe and the corresponding images (e.g. apple_pie)
SELECT
    R.*,
    I.path AS image_path
FROM
    Recipes R
    LEFT JOIN Images I ON R.id = I.recipe_id
WHERE
    R.id = 1;

-- Fetch all hardware needed for a recipe  (e.g. fish tacos)
SELECT
    H.name AS hardware_name
FROM
    Hardware H
    JOIN Hardware_Instructions HI ON H.id = HI.hw_id
    JOIN Instructions I ON HI.inst_id = I.id
    JOIN Recipes R ON I.rec_id = R.id
WHERE
    R.id = 2;

-- Fetch all instructions of a recipe (e.g. pancakes)
SELECT
    instructions
FROM
    Instructions
WHERE
    rec_id = 7;

-- Fetch all ingredients of a recipe (e.g. pasta alfredo)
SELECT
    Ing.name AS ingredient_name,
    RI.amount,
    RI.amount_unit,
    RI.optional
FROM
    Ingredients Ing
    JOIN Recipes_Ingredients RI ON Ing.id = RI.ing_id
    JOIN Recipes R ON RI.rec_id = R.id
WHERE
    R.id = 5;

-- Fetch all allergies of a recipe (e.g. fish tacos)
SELECT
    A.name AS allergy_name
FROM
    Allergies A
    JOIN Ingredients_Allergies IA ON A.id = IA.all_id
    JOIN Recipes_Ingredients RI ON IA.ing_id = RI.ing_id
    JOIN Recipes R ON RI.rec_id = R.id
WHERE
    R.id = 2;

-- Fetch alternative recipes based on the category (e.g. alt. for apple pie)
SELECT
    R.*
FROM
    Recipes R
    JOIN Recipes_RecipeCategories RRC ON R.id = RRC.rec_id
    JOIN RecipeCategories RC ON RRC.cat_id = RC.id
WHERE
    RRC.cat_id = 1
    AND RRC.rec_id != 1;

-- Fetch all ingredients belonging to a category (e.g. dairy)
SELECT
    Ing.*
FROM
    Ingredients Ing
    JOIN Ingredients_IngredientCategories IIC ON Ing.id = IIC.ing_id
    JOIN IngredientCategories IC ON IIC.cat_id = IC.id
WHERE
    IC.name = 'Dairy';

-- Fetch categories of an ingredient (e.g. beef stew)
SELECT
    IC.*
FROM
    IngredientCategories IC
    JOIN Ingredients_IngredientCategories IIC ON IC.id = IIC.cat_id
    JOIN Ingredients Ing ON IIC.ing_id = Ing.id
WHERE
    Ing.id = 3;