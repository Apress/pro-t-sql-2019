USE Menu;
GO

-- You will need to drop this after creating the index for the previous step
-- DROP INDEX NDX_RecipeIngredient_IsActive_IngredientID ON dbo.RecipeIngredient 

CREATE NONCLUSTERED INDEX NDX_RecipeIngredient_IsActive_IngredientID
ON dbo.RecipeIngredient (IsActive, IngredientID)