USE Menu;
GO

CREATE TRIGGER RecipeInsertRecipeIsActive
ON dbo.Recipe
FOR INSERT

AS

INSERT INTO dbo.RecipeIsActive
(
	RecipeID,
	RecipeName,
	RecipeDescription,
	ServingQuantity,
	MealTypeID,
	PreparationTypeID,
	DateCreated,
	DateModified
)
SELECT
	RecipeID,
	RecipeName,
	RecipeDescription,
	ServingQuantity,
	MealTypeID,
	PreparationTypeID,
	DateCreated,
	DateModified
FROM inserted;