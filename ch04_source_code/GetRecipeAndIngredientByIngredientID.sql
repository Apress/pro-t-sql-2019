/*-------------------------------------------------------------*\
Name:             dbo.GetRecipeAndIngredientByIngredientID
Author:           Elizabeth Noble 
Created Date:     April 20, 2019
Description: Get a list of all recipes in the database

Sample Usage:
      EXECUTE dbo.GetRecipeAndIngredientByIngredientID 1

\*-------------------------------------------------------------*/
CREATE PROCEDURE dbo.GetRecipeAndIngredientByIngredientID
      @IngredientID     INT
AS

      SELECT
            rec.RecipeName,
            ingr.IngredientName, 
            ingr.IsActive, 
            ingr.DateCreated, 
            ingr.DateModified
      FROM dbo.Recipe rec
            INNER JOIN dbo.RecipeIngredient recingr
            ON rec.RecipeID = recingr.RecipeID
            INNER JOIN dbo.Ingredient ingr
            ON recingr.IngredientID = ingr.IngredientID
      WHERE ingr.IngredientID = @IngredientID
      ORDER BY rec.RecipeName, ingr.IngredientName;
GO
