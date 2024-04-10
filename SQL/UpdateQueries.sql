-- Update the rating of a recipe (e.g. apple pie)
UPDATE Recipes
SET
    rating = 2.0
WHERE
    id = 1;

-- Update the instructions of a recipe (e.g. first apple pie instruction)
UPDATE Instructions
SET
    instructions = 'Preheat the oven to 200F'
WHERE
    rec_id = 1
    AND id = 1;

-- Update the used Hardware for an instruction (e.g. sauce pan instead of mixing bowl for apple pie)
UPDATE Hardware_Instructions
SET
    hw_id = 2
WHERE
    inst_id = 6;

-- Update the ingredients of a recipe (e.g. 5 apples instead of 4 for apple pie)
UPDATE Recipes_Ingredients
SET
    amount = 5,
    amount_unit = 'apples'
WHERE
    rec_id = 1
    AND ing_id = 1;