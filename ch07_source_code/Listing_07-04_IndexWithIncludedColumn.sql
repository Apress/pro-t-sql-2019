USE Menu;
GO

-- If Listing 07-03 was run previously, you will need to drop the index
-- DROP INDEX IX_Ingredient_IngredientName ON dbo.Ingredient

CREATE INDEX IX_Ingredient_IngredientName
	ON dbo.Ingredient (IngredientName) INCLUDE (DateCreated);