USE Menu;
GO

-- Create Report Heading for All Recipes
PRINT '-------- Recipe Listing --------'; 
-- Repeat the following per recipe
---- Create Section Subheading per Recipe
      SELECT 
            '----- Ingredients For Recipe: ' + rec.RecipeName + '-----' AS 'SectionHeader'
      FROM  dbo.Recipe rec
---- List All Ingredients Per Recipe
      SELECT 
            rec.RecipeID,
            rec.RecipeName, 
            ing.IngredientName, 
            srv.ServingPortionQuantity, 
            srv.ServingPortionUnit
      FROM dbo.Ingredient ing
            INNER JOIN dbo.RecipeIngredient recing
            ON ing.IngredientID = recing.IngredientID
            INNER JOIN dbo.Recipe rec
            ON recing.RecipeID = rec.RecipeID
            INNER JOIN dbo.ServingPortion srv
            ON recing.ServingPortionID = srv.ServingPortionID
      ORDER BY rec.RecipeName, ing.IngredientName
