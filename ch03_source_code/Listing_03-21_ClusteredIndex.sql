USE Menu;
GO

CREATE CLUSTERED INDEX CX_Ingredient_IngredientName
	ON dbo.Ingredient (IngredientName);