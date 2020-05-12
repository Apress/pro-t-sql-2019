USE Menu;
GO

-- This table was created with the foreign key
ALTER TABLE dbo.RecipeIngredient
ADD CONSTRAINT FK_RecipeIngredient_IngredientID
	FOREIGN KEY (IngredientID)
	REFERENCES dbo.Ingredient(IngredientID);