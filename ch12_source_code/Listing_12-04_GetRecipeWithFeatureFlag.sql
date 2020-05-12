USE Menu;
GO

/*-------------------------------------------------------------*\
Name:			dbo.GetRecipe
Author:			Elizabeth Noble
Created Date:	April 20, 2019
Description:	Get a list of all recipes in the database
Updated Date:	May 20, 2019
Description: Add feature flag. If feature flag is enabled, only
 Show active recipes. Otherwise, show all recipes.
Sample Usage:
	EXECUTE dbo.GetRecipe
\*-------------------------------------------------------------*/
CREATE OR ALTER PROCEDURE dbo.GetRecipe

AS

	IF ((SELECT IsActive FROM dbo.FeatureFlag WHERE FeatureFlagID = 947) = 1)
		BEGIN
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
			WHERE IsActive = 1;
		END
	ELSE
		BEGIN
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
			FROM dbo.Recipe;
		END