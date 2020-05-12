USE Menu;
GO

UPDATE dbo.Ingredient
SET IsActive = 0
WHERE IngredientID BETWEEN 1 AND 5