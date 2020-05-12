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

Updated Date:	June 20, 2019
Description: Remove the feature flag. Leave only the new logic.
 The stored procedure now only returns active recipes.

Sample Usage:
	EXECUTE dbo.GetRecipe
\*-------------------------------------------------------------*/
CREATE OR ALTER PROCEDURE dbo.GetRecipe
AS
Chapter 12 Deployment
296
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