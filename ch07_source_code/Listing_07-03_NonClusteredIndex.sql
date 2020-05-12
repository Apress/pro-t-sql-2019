USE Menu;
GO

CREATE INDEX IX_Ingredient_IngredientName
	ON dbo.Ingredient (IngredientName);