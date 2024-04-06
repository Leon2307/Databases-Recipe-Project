-- Delete a Recipe (e.g. fish tacos)
DELETE FROM Recipes
WHERE
    id = 2;

-- Delete an Insruction step ('Mix apples with sugar and spices.')
DELETE FROM Instructions
WHERE
    id = 3;

-- Delete a Hardware (e.g. whisk)
DELETE FROM Hardware
WHERE
    id = 6;

-- Delete a Recipe_RecipeCategories entry (e.g. apple pie and dessert)
DELETE FROM Recipes_RecipeCategories
WHERE
    rec_id = 1
    AND cat_id = 1;

-- Delete all images of a Recipe (e.g. apple pie)
DELETE FROM Images
WHERE
    recipe_id = 1;

-- Delete an ingredient of a Recipe (e.g pie crust from apple pie)
DELETE FROM Recipes_Ingredients
WHERE
    rec_id = 1
    AND ing_id = 2;

-- Delete an allergy of an ingredient (e.g. baking powder and gluten)
DELETE FROM Ingredients_Allergies
WHERE
    ing_id = 26
    AND all_id = 2;

-- Delete an alternative ingredient of an ingredient (e.g. remove alternative amount of apples)
DELETE FROM Alternative_Ingredients
WHERE
    ing_id = 1
    AND alt_id = 1;

-- Delete an ingredient category from an ingredient (e.g. tortillas from grains)
DELETE FROM Ingredients_IngredientCategories
WHERE
    ing_id = 4
    AND cat_id = 2;