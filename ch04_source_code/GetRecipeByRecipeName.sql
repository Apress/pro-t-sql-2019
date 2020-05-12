/*-------------------------------------------------------------*\
Name:             dbo.GetRecipeByRecipeName
Author:           Elizabeth Noble 
Created Date:     April 20, 2019
Description: Get a list of all recipes in the database

Sample Usage:
      EXECUTE dbo.GetRecipe

\*-------------------------------------------------------------*/
CREATE PROCEDURE dbo.GetRecipeByRecipeName

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
      FROM dbo.Recipe;

EXECUTE dbo.GetRecipe;
