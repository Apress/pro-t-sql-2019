USE Menu;
GO

/*-------------------------------------------------------------*\
Name:			dbo.GetRecipeByRecipeID
Author:			Elizabeth Noble
Created Date:	April 20, 2019
Description:	Get recipe information when a recipe ID is provided

Sample Usage:
	DECLARE @RecipeID INT;
	SET @RecipeID = 1;
	EXECUTE dbo.GetRecipeByRecipeID @RecipeID
\*-------------------------------------------------------------*/
CREATE PROCEDURE dbo.GetRecipeByRecipeID
	@RecipeID INT
AS
	SELECT
		RecipeID,
		RecipeName,
		RecipeDescription,
		ServingQuantity,
		MealTypeID,
		PreparationTypeID,
		IsActive,
		DateCreated,
		DateModified
	FROM dbo.Recipe
	WHERE RecipeID = @RecipeID;