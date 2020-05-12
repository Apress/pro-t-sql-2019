USE Menu;
GO

SELECT TOP 500 rec.RecipeName
FROM dbo.Recipe rec
	FULL OUTER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID <> recing.RecipeID