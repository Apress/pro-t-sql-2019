USE Menu;
GO

SELECT IngredientName, DateCreated
FROM dbo. Ingredient
WHERE IngredientName LIKE 'Tomato%';