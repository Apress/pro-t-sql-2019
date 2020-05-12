USE Menu;
GO

CREATE VIEW dbo.Recipe
AS
	SELECT RecipeID,
		RecipeName,
		RecipeDescription,
		ServingQuantity,
		MealTypeID,
		PreparationTypeID,
		DateCreated,
		DateModified
	FROM dbo.RecipeIsActive;