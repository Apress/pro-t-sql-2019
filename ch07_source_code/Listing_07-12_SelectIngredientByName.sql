USE Menu;
GO

-- Remove the non-clustered index before running this query
-- DROP INDEX IX_Ingredient_IngredientName ON dbo.Ingredient;

SELECT ing.IngredientName
FROM dbo.Ingredient ing
WHERE ing.IngredientName LIKE 'Tomato%'
UNION
SELECT ing.IngredientName
FROM dbo.Ingredient ing
WHERE ing.IngredientName = 'Tomato'