USE Menu;
GO

SELECT rec.RecipeName,
 ing.IngredientName
FROM dbo.Recipe rec
 INNER JOIN dbo.RecipeIngredient recing
 ON rec.RecipeID = recing.RecipeID
 INNER JOIN dbo.Ingredient ing
 ON recing.IngredientID = ing.IngredientID
WHERE ing.IngredientName LIKE 'Tom%'
 AND ing.IsActive = 1