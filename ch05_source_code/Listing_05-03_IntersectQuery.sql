USE Menu;
GO

SELECT IngredientID, IngredientName
FROM dbo.Ingredient
WHERE IngredientName LIKE '%Tomato%'
INTERSECT
SELECT IngredientID, IngredientName
FROM dbo.Ingredient
WHERE Measurement = 'Ounces'