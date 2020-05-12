USE Menu;
GO

DECLARE @RecipeID INT;

SET @RecipeID = 1

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
WHERE RecipeID = @RecipeID;