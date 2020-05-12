USE Menu;
GO

-- You will need to change the view dbo.AvailableMeal to be schemabound
---- Step 1: 
CREATE OR ALTER VIEW dbo.AvailableMeal
WITH SCHEMABINDING
AS
SELECT meal.MealTypeName, meal.MealTypeDescription, meal.IsActive, meal.DateCreated, meal.DateModified, rec.RecipeName, rec.ServingQuantity, ing.IngredientName
FROM dbo.Recipe rec
	INNER JOIN dbo.MealType meal
	ON rec.MealTypeID = meal.MealTypeID
	INNER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID
	INNER JOIN dbo.Ingredient ing
	ON recing.IngredientID = ing.IngredientID;
GO

-- This step matches Listing 2-9 from the book
---- Step 2:
CREATE UNIQUE CLUSTERED INDEX CX_AvailableMeal_RecipeNameIngredientName
     ON dbo.AvailableMeal (RecipeName, IngredientName);

-- To get the execution plan from Figure 2-3, run the code below
-- Make sure to turn on "Include Actual Execution Plan"
---- Step 3:
INSERT INTO dbo.Recipe (RecipeName, RecipeDescription, ServingQuantity, MealTypeID, PreparationTypeID, IsActive, DateCreated, DateModified)
VALUES ('Acorn Squash', 'Roasted acorn squash', 2, 3, 2, 1, GETDATE(), GETDATE());

INSERT INTO dbo.Ingredient (IngredientName, IsActive, DateCreated, DateModified)
VALUES 
('Acorn Squash', 1, GETDATE(), GETDATE()),
('Butter', 1, GETDATE(), GETDATE());

DECLARE @RecipeID INT;
SELECT @RecipeID = RecipeID FROM dbo.Recipe WHERE RecipeName = 'Acorn Squash'

INSERT INTO dbo.RecipeIngredient (RecipeID, IngredientID, ServingPortionID, IsActive, DateCreated, DateModified)
SELECT @RecipeID,  IngredientID, 1, 1, GETDATE(), GETDATE()
FROM dbo.Ingredient
WHERE IngredientName = 'Acorn Squash';

DROP INDEX CX_AvailableMeal_RecipeNameIngredientName ON dbo.AvailableMeal;

INSERT INTO dbo.RecipeIngredient (RecipeID, IngredientID, ServingPortionID, IsActive, DateCreated, DateModified)
SELECT @RecipeID,  IngredientID, 1, 1, GETDATE(), GETDATE()
FROM dbo.Ingredient
WHERE IngredientName = 'Butter';

GO
