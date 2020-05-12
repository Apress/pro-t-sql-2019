USE Menu;
GO

UPDATE dbo.Recipe
SET DateModified = GETDATE()
WHERE RecipeID = 3;