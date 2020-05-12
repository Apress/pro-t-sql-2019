USE Menu;
GO

-- There may already be a Primary Key. If so, drop the Primary Key.
-- ALTER TABLE dbo.RecipeIngredient DROP CONSTRAINT PK_RecipeIngredient_RecipeIngredientID

-- Make sure the following index is in place
-- ALTER TABLE dbo.RecipeIngredient
-- ADD CONSTRAINT PK_RecipeIngredient_RecipeIDIngredientID
-- PRIMARY KEY CLUSTERED (RecipeID, IngredientID)

SELECT ing.IngredientName
FROM dbo.Ingredient ing
WHERE EXISTS
	(
		SELECT *
		FROM dbo.RecipeIngredient recing
		WHERE ing.IngredientID = recing.IngredientID
		AND recing.RecipeID = 2
	)