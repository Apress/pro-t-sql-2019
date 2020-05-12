USE Menu;
GO

UPDATE dbo.AvailableMeal
SET IngredientName = 'Spicy Italian Sausage'
WHERE RecipeName = 'Spaghetti'
