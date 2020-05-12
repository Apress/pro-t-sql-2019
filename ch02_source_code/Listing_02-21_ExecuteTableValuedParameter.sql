USE Menu;
GO

DECLARE @RecipeType AS RecipeMealType;

INSERT INTO @RecipeType (RecipeName, MealTypeName)
SELECT rec.RecipeName, ml.MealTypeName
FROM dbo.Recipe rec
	INNER JOIN dbo.MealType ml
	ON rec.MealTypeID = ml.MealTypeID;

EXEC dbo.UpdateRecipeMenuType @RecipeType;
GO