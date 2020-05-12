USE Menu;
GO

SELECT rec.RecipeName
FROM dbo.Recipe rec
	LEFT OUTER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID