USE Menu;
GO

UPDATE dbo.Ingredient
SET IsActive = 0
WHERE IngredientName LIKE '%Tomato%'