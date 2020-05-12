USE Menu;
GO

SELECT
	RecipeID,
	RecipeName,
	RecipeDescription,
	ServingQuantity,
	MealTypeID,
	PreparationTypeID,
	IsActive,
	DateCreated,
	DateModified
FROM dbo.Recipe
WHERE RecipeID = 1;