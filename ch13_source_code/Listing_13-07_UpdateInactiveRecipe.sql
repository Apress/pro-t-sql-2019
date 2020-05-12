USE Menu;
GO

UPDATE dbo.RecipeIngredient
SET RecipeID = 0,
	DateModified = GETDATE()
WHERE RecipeID = 4;