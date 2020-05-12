USE Menu;
GO

CREATE FUNCTION dbo.IngredientsByRecipe (@RecipeID INT)  
RETURNS TABLE  
AS  
RETURN   
(  
	SELECT meal.MealTypeName, rec.ServingQuantity, ing.IngredientName
	FROM dbo.Recipe rec
		INNER JOIN dbo.MealType meal
		ON rec.MealTypeID = meal.MealTypeID
		INNER JOIN dbo.RecipeIngredient recing
		ON rec.RecipeID = recing.RecipeID
		INNER JOIN dbo.Ingredient ing
		ON recing.IngredientID = ing.IngredientID 
	WHERE rec.RecipeID = @RecipeID
);  
GO
