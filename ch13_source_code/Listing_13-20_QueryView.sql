USE Menu;
GO

CREATE PROCEDURE dbo.RecipeByRecipeName
	@RecipeName VARCHAR(25)
AS

SELECT
	mtp.RecipeName,
	mtp.RecipeDescription,
	mtp.ServingQuantity,
	mtp.RecipeIngredientIsActive,
	mtp.IngredientName
FROM dbo.MealTypeInformation mtp
WHERE mtp.RecipeName = @RecipeName;