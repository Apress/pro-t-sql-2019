USE Menu;
GO

ALTER TABLE dbo.RecipeIngredient
DROP CONSTRAINT FK_RecipeIngredient_RecipeID;