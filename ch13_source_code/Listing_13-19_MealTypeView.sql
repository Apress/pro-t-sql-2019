USE Menu;
GO

CREATE VIEW dbo.MealTypeInformation

AS

SELECT
	mel.MealTypeName,
	mel.MealTypeDescription,
	prp.PreparationTypeName,
	prp.PreparationTypeDescription,
	rec.RecipeName,
	rec.RecipeDescription,
	rec.ServingQuantity,
	recing.IsActive RecipeIngredientIsActive,
	ing.IngredientName,
	ing.IsActive AS IngredientIsActive
FROM dbo.Recipe rec
	INNER JOIN dbo.MealType mel
	ON rec.MealTypeID = mel.MealTypeID
	INNER JOIN dbo.PreparationType prp
	ON rec.PreparationTypeID = prp.PreparationTypeID
	INNER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID
	INNER JOIN dbo.Ingredient ing
	ON recing.IngredientID = ing.IngredientID;