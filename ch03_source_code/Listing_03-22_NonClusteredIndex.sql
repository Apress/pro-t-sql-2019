USE Menu;
GO

CREATE NONCLUSTERED INDEX IX_Ingredient_IngredientName_IsActive
	ON dbo.Ingredient (IngredientName ASC, IsActive DESC);