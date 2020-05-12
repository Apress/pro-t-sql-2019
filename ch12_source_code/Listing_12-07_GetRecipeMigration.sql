USE Menu;
GO

-- <Migration ID="68feb116-9776-4168-9d77-b6d28c0f43f9" />
GO
GO
PRINT N'Altering [dbo].[GetRecipe]...';
GO
/*-------------------------------------------------------------*\
Name:			dbo.GetRecipe
Author:			Elizabeth Noble
Created Date:	April 20, 2019
Description: Get a list of all recipes in the database

Updated Date:	July 23, 2019
Description: Remove inactive recipes

Updated Date:	July 23, 2019
Description: Remove DateCreated and DateModified columns

Sample Usage:
	EXECUTE dbo.GetRecipe
\*-------------------------------------------------------------*/
ALTER PROCEDURE dbo.GetRecipe

AS

	SELECT
		RecipeID,
		RecipeName,
		RecipeDescription,
		ServingQuantity,
		MealTypeID,
		PreparationTypeID,
		IsActive
	FROM dbo.Recipe
	WHERE IsActive = 1;
GO