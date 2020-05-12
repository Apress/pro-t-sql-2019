USE Menu;
GO

/*-------------------------------------------------------------*\
Name:			dbo.GetRecipeNutrition
Author:			Elizabeth Noble
Created Date:	03/13/2019
Description:	Lookup nutritional information for a given recipe
Sample Usage:
	 DECLARE @RecipeID INT
	 SET @RecipeID = 1

	 EXECUTE dbo. GetRecipeNutrition @RecipeID
\*-------------------------------------------------------------*/
-- Get the nutrition information for a recipe
-- Since nutrition information is saved per ingredient
-- This will be a summary of nutrition information
-- per ingredient that is specified in the recipe