USE Menu;
GO

-- Create Report Heading for All Recipes
-- Repeat the following per recipe
---- Create Section Subheading per Recipe
---- List All Ingredients Per Recipe
      SELECT 
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
