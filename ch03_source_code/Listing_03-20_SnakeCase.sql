USE Menu;
GO

-- This query cannot be run without creating a new table
---- Step 1:
CREATE TABLE dbo.recipe_ingredient
(
	recipeID_ingredientID	INT,
	recipeID				INT,
	ingredientID			INT,
	is_active				BIT,
	date_created			DATETIME2,
	date_modified			DATETIME2,
	CONSTRAINT PK_recipe_ingredient_recipeID_ingredientID 
		PRIMARY KEY (recipeID_ingredientID),

);

-- If you want to see data returned, run this to populate the table
---- Step 2:
INSERT INTO dbo.recipe_ingredient 
(
	recipeID_ingredientID,
	recipeID,
	ingredientID,
	is_active,
	date_created,
	date_modified
)
SELECT 
	RecipeIngredientID,
	RecipeID,
	IngredientID,
	IsActive,
	DateCreated,
	DateModified
FROM dbo.RecipeIngredient

---- Then run the query from Listing 3-20
SELECT recipeID, ingredientID, date_created, date_modified
FROM dbo.recipe_ingredient