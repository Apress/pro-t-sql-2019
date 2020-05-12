USE Menu;
GO

SELECT rec.RecipeID,
	rec.RecipeName,
	rec.RecipeDescription,
	rec.IsActive,
	chng.RecipeID,
	chng.SYS_CHANGE_VERSION,
	chng.SYS_CHANGE_CONTEXT
FROM dbo.Recipe AS rec
	CROSS APPLY CHANGETABLE
	(VERSION Recipe, (RecipeID), (rec.RecipeID)) AS chng;