USE Menu;
GO

-- There may already be a Primary Key. If so, drop the Primary Key.
-- ALTER TABLE dbo.RecipeIngredient DROP CONSTRAINT PK_RecipeIngredient_RecipeIngredientID


ALTER TABLE dbo.RecipeIngredient
ADD CONSTRAINT PK_RecipeIngredient_RecipeIDIngredientID
PRIMARY KEY CLUSTERED (RecipeID, IngredientID)