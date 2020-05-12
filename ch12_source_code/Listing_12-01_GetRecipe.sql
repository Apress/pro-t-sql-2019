USE Menu;
GO

/*-------------------------------------------------------------*\
Name:             dbo.GetRecipe
Author:           Elizabeth Noble 
Created Date:     April 20, 2019
Description: Get a list of all recipes in the database

Sample Usage:
      EXECUTE dbo.GetRecipe

\*-------------------------------------------------------------*/
CREATE OR ALTER PROCEDURE dbo.GetRecipe

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
