-- Insert into Recipes
INSERT INTO
	Recipes (name, rating, cooking_time)
VALUES
	('Apple Pie', 4.5, 60),
	('Fish Tacos', 3.7, 30),
	('Beef Stew', 4.1, 90),
	('Chicken Soup', 4.6, 60),
	('Pasta Alfredo', 3.9, 25),
	('Egg Salad', 4.0, 15),
	('Pancakes', 4.2, 20);

-- Insert into Images
INSERT INTO
	Images (recipe_id, path)
VALUES
	(1, '/path/to/apple_pie_1.jpg'),
	(1, '/path/to/apple_pie_2.jpg'),
	(2, '/path/to/fish_tacos.jpg'),
	(3, '/path/to/beef_stew_image.jpg'),
	(4, '/path/to/chicken_soup_image.jpg'),
	(5, '/path/to/pasta_alfredo_image.jpg'),
	(6, '/path/to/egg_salad_image.jpg'),
	(7, '/path/to/pancakes_image.jpg');

-- Insert into Instructions
INSERT INTO
	Instructions (instructions, rec_id)
VALUES
	('Preheat the oven to 375°F.', 1),
	('Peel and slice apples.', 1),
	('Mix apples with sugar and spices.', 1),
	('Prepare crust and fill pie dish.', 1),
	('Add apple mixture.', 1),
	('Add top crust and vent.', 1),
	('Bake for 45-50 minutes.', 1),
	(
		'Prepare the fish by seasoning with salt and pepper.',
		2
	),
	('Grill or pan-fry fish until cooked through.', 2),
	('Warm tortillas.', 2),
	(
		'Assemble tacos with fish and desired toppings.',
		2
	),
	('Serve immediately.', 2),
	('Heat oil in a large pot.', 3),
	('Brown beef in batches.', 3),
	('Add vegetables and cook until softened.', 3),
	('Add broth and simmer for 1.5 hours.', 3),
	('Serve hot.', 3),
	(
		'In a pot, combine chicken, vegetables, and broth.',
		4
	),
	(
		'Bring to a boil, then simmer until chicken is cooked.',
		4
	),
	('Remove chicken, shred, and return to soup.', 4),
	('Season to taste.', 4),
	('Serve hot.', 4),
	(
		'Cook pasta according to package instructions.',
		5
	),
	(
		'In a separate pan, melt butter and add cream.',
		5
	),
	('Stir in grated cheese until melted.', 5),
	('Toss cooked pasta in sauce until coated.', 5),
	(
		'Serve hot, garnished with parsley if desired.',
		5
	),
	('Hard boil eggs and chop.', 6),
	(
		'Mix eggs with mayonnaise, mustard, salt, and pepper.',
		6
	),
	('Add chopped celery and onions.', 6),
	('Serve chilled.', 6),
	(
		'Mix flour, baking powder, salt, and sugar in a bowl.',
		7
	),
	(
		'In a separate bowl, whisk together milk, eggs, and melted butter.',
		7
	),
	('Combine wet and dry ingredients.', 7),
	(
		'Cook pancakes on a hot griddle until golden brown.',
		7
	),
	('Serve hot with desired toppings.', 7);

-- Insert into Hardware
INSERT INTO
	Hardware (name)
VALUES
	('Mixing Bowl'),
	('Saucepan'),
	('Baking Sheet'),
	('Grill Pan'),
	('Food Processor'),
	('Whisk');

-- Insert into Hardware_Instructions
INSERT INTO
	Hardware_Instructions (hw_id, inst_id)
VALUES
	(1, 1), -- Mixing Bowl for Step 1 of Apple Pie
	(1, 6), -- Mixing Bowl for Step 6 of Apple Pie
	(2, 13), -- Saucepan for Step 1 of Beef Stew
	(2, 17), -- Saucepan for Step 1 of Chicken Soup
	(3, 7), -- Baking Sheet for Step 7 of Apple Pie
	(4, 9), -- Grill Pan for Step 9 of Fish Tacos
	(5, 5), -- Food Processor for Step 5 of Pasta Alfredo
	(6, 32) -- Whisk for Step 2 of Pancakes
;

-- Insert into RecipeCategories
INSERT INTO
	RecipeCategories (name)
VALUES
	('Dessert'),
	('Seafood'),
	('Main Course'),
	('Soup'),
	('Pasta'),
	('Salad');

-- Insert into Recipes_RecipeCategories
INSERT INTO
	Recipes_RecipeCategories (rec_id, cat_id)
VALUES
	(1, 1), -- Apple Pie belongs to Dessert category
	(2, 2), -- Fish Tacos belong to Seafood category
	(3, 3), -- Beef Stew belongs to Main Course category
	(4, 4), -- Chicken Soup belongs to Soup category
	(5, 5), -- Pasta Alfredo belongs to Pasta category
	(6, 6), -- Egg Salad belongs to Salad category
	(7, 1) -- Pancakes belong to Dessert category
;

-- Inserts for Ingredients
INSERT INTO
	Ingredients (name)
VALUES
	('Apples'),
	('Pie Crust'),
	('Sugar'),
	('Cinnamon'),
	('Tortillas'),
	('Fish'),
	('Lime'),
	('Cabbage'),
	('Tomato'),
	('Beef'),
	('Carrots'),
	('Potatoes'),
	('Chicken'),
	('Onion'),
	('Pasta'),
	('Butter'),
	('Cream'),
	('Parmesan Cheese'),
	('Eggs'),
	('Mayonnaise'),
	('Mustard'),
	('Celery'),
	('Milk'),
	('Flour'),
	('Baking Powder'),
	('Salt'),
	('Pepper');

-- Inserts for Recipes_Ingredients
INSERT INTO
	Recipes_Ingredients (rec_id, ing_id, amount, amount_unit, optional)
VALUES
	(1, 1, 4, 'apples', 0), -- Apple Pie: 4 apples
	(1, 2, 1, 'pie crust', 0), -- Apple Pie: 1 pie crust
	(1, 3, 1, 'cup', 0), -- Apple Pie: 1 cup sugar
	(1, 4, 1, 'tsp', 0), -- Apple Pie: 1 tsp cinnamon
	(2, 5, 8, 'tortillas', 0), -- Fish Tacos: 8 tortillas
	(2, 6, 1, 'lb', 0), -- Fish Tacos: 1 lb fish
	(2, 7, 1, 'lime', 0), -- Fish Tacos: 1 lime
	(2, 8, 1, 'head', 0), -- Fish Tacos: 1 head cabbage
	(2, 9, 2, 'tomatoes', 0), -- Fish Tacos: 2 tomatoes
	(3, 10, 1, 'lb', 0), -- Beef Stew: 1 lb beef
	(3, 11, 2, 'carrots', 0), -- Beef Stew: 2 carrots
	(3, 12, 2, 'potatoes', 0), -- Beef Stew: 2 potatoes
	(4, 13, 1, 'lb', 0), -- Chicken Soup: 1 lb chicken
	(4, 14, 1, 'onion', 0), -- Chicken Soup: 1 onion
	(4, 15, 1, 'cup', 0), -- Chicken Soup: 1 cup pasta
	(5, 16, 1, 'lb', 0), -- Pasta Alfredo: 1 lb pasta
	(5, 17, 0.5, 'cup', 0), -- Pasta Alfredo: 0.5 cup butter
	(5, 18, 1, 'cup', 0), -- Pasta Alfredo: 1 cup cream
	(5, 19, 1, 'cup', 0), -- Pasta Alfredo: 1 cup parmesan cheese
	(6, 20, 6, 'eggs', 0), -- Egg Salad: 6 eggs
	(6, 21, 0.25, 'cup', 0), -- Egg Salad: 0.25 cup mayonnaise
	(6, 22, 1, 'tsp', 0), -- Egg Salad: 1 tsp mustard
	(6, 23, 1, 'stalk', 1), -- Egg Salad: 1 stalk celery (optional)
	(7, 24, 1, 'cup', 0), -- Pancakes: 1 cup milk
	(7, 25, 1, 'cup', 0), -- Pancakes: 1 cup flour
	(7, 26, 1, 'tbsp', 0), -- Pancakes: 1 tbsp baking powder
	(7, 27, 0.25, 'tsp', 0) -- Pancakes: 0.25 tsp salt
;

-- Insert into Alternative_Ingredients
INSERT INTO
	Alternative_Ingredients (ing_id, alt_id, amount, amount_unit)
VALUES
	-- Alternative ingredients for Apple Pie
	(1, 1, 6, 'apples'), -- Increase apples to 6 for a larger pie
	(4, 5, 2, 'tortillas'), -- Use 2 tortillas instead of pie crust for a different crust option
	-- Alternative ingredients for Fish Tacos
	(7, 8, 2, 'lemons'), -- Substitute lemons for limes
	(9, 10, 1, 'head'), -- Use 1 head lettuce instead of cabbage
	-- Alternative ingredients for Beef Stew
	(10, 11, 3, 'carrots'), -- Increase carrots to 3 for more vegetable content
	(11, 12, 3, 'potatoes'), -- Increase potatoes to 3 for more starch content
	-- Alternative ingredients for Chicken Soup
	(14, 15, 1, 'cup'), -- Add 1 cup rice instead of pasta
	(14, 16, 1, 'cup'), -- Add 1 cup noodles instead of pasta
	-- Alternative ingredients for Pasta Alfredo
	(16, 17, 1, 'lb'), -- Use 1 lb spaghetti instead of fettuccine
	(17, 18, 0.25, 'cup'), -- Use 0.25 cup milk instead of cream
	-- Alternative ingredients for Egg Salad
	(20, 21, 0.25, 'cup'), -- Use 0.25 cup Greek yogurt instead of mayonnaise
	(22, 22, 1, 'tsp'), -- Use 1 tsp honey mustard instead of mustard
	-- Alternative ingredients for Pancakes
	(24, 24, 1, 'cup'), -- Use 1 cup buttermilk instead of milk
	(25, 25, 1, 'cup'), -- Use 1 cup whole wheat flour instead of all-purpose flour
	(26, 26, 2, 'tsp'), -- Use 2 tsp baking soda instead of baking powder
	(27, 27, 0.5, 'tsp') -- Use 0.5 tsp sea salt instead of regular salt
;

-- Insert into Allergies
INSERT INTO
	Allergies (name)
VALUES
	('Dairy'),
	('Gluten'),
	('Peanut'),
	('Egg'),
	('Shellfish'),
	('Soy'),
	('Tree Nuts'),
	('Fish');

-- Insert into Ingredients_Allergies
INSERT INTO
	Ingredients_Allergies (ing_id, all_id)
VALUES
	-- Ingredients containing dairy
	(2, 1), -- Milk
	(17, 1), -- Butter
	(18, 1), -- Cream
	(19, 1), -- Parmesan Cheese
	(21, 1), -- Mayonnaise
	-- Ingredients containing gluten
	(25, 2), -- Flour
	(26, 2), -- Baking Powder
	-- Ingredients containing peanuts
	(3, 3), -- Peanut (Alternative to Vegetable Oil)
	-- Ingredients containing eggs
	(6, 4), -- Eggs
	-- Ingredients containing shellfish
	(6, 5), -- Fish
	-- Ingredients containing soy
	(26, 6), -- Soy (Alternative to Vegetable Oil)
	-- Ingredients containing tree nuts
	-- No ingredients containing tree nuts in this example
	-- Ingredients containing fish
	(6, 8) -- Fish
;

-- Insert into IngredientCategories
INSERT INTO
	IngredientCategories (name)
VALUES
	('Dairy'),
	('Grains'),
	('Proteins'),
	('Vegetables'),
	('Fruits'),
	('Herbs & Spices'),
	('Condiments');

-- Insert into Ingredients_IngredientCategories
INSERT INTO
	Ingredients_IngredientCategories (ing_id, cat_id)
VALUES
	-- Dairy
	(2, 1), -- Milk
	(17, 1), -- Butter
	(18, 1), -- Cream
	(19, 1), -- Parmesan Cheese
	(21, 1), -- Mayonnaise
	-- Grains
	(25, 2), -- Flour
	(4, 2), -- Tortillas (Alternative to Pie Crust)
	-- Proteins
	(6, 3), -- Eggs
	(10, 3), -- Beef
	(13, 3), -- Chicken
	(9, 3), -- Fish
	-- Vegetables
	(7, 4), -- Potato
	(8, 4), -- Carrot
	(14, 4), -- Onion
	(8, 6), -- Tomato
	-- Fruits
	(1, 5), -- Apples
	(5, 5), -- Lime
	-- Herbs & Spices
	(3, 6), -- Cinnamon
	(7, 6), -- Cabbage
	(22, 6), -- Mustard
	(23, 6), -- Celery
	(20, 6), -- Salt
	-- Condiments
	(21, 7), -- Mayonnaise
	(22, 7) -- Mustard
;