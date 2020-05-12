SET NOCOUNT ON;
-- Create Report Heading for All Recipes
PRINT '-------- Recipe Listing --------'; 
PRINT ''
-- Create a temporary table to store the recipe information
      CREATE TABLE #RecipeList 
      (
            OrderedList             INT,
            RecipeID                INT,
            SectionHeader           VARCHAR(100)
      );
-- Repeat the following per recipe
---- Create Section Spacing per Recipe
      INSERT INTO #RecipeList (OrderedList, RecipeID, SectionHeader)
      SELECT 
            0 AS 'OrderedList',
            rec.RecipeID,
            '' AS 'SectionHeader'
      FROM  dbo.Recipe rec
      WHERE rec.RecipeID < 3

---- Create Section Subheading per Recipe
      INSERT INTO #RecipeList (OrderedList, RecipeID, SectionHeader)
      SELECT 
            10 AS 'OrderedList',
            rec.RecipeID,
            '----- Ingredients For Recipe: ' + rec.RecipeName AS 'SectionHeader'
      FROM  dbo.Recipe rec
      WHERE rec.RecipeID < 3

---- Add the column headings for ingredients per recipe 
      INSERT INTO #RecipeList (OrderedList, RecipeID, SectionHeader)
      SELECT 
            15 AS 'OrderedList',
            rec.RecipeID,
            CAST('IngredientName' AS CHAR(25)) + ' ' +
                  CAST('ServingPortionQuantity' AS CHAR(22)) + ' ' +
                  CAST('ServingPortionUnit' AS CHAR(19)) AS 'SectionHeader'
      FROM  dbo.Recipe rec
      WHERE rec.RecipeID < 3

      INSERT INTO #RecipeList (OrderedList, RecipeID, SectionHeader)
      SELECT 
            20 AS 'OrderedList',
            rec.RecipeID,
            '------------------------- ---------------------- ------------------' AS 'SectionHeader'
      FROM  dbo.Recipe rec
      WHERE rec.RecipeID < 3
---- List All Ingredients Per Recipe
      INSERT INTO #RecipeList 
      (
            OrderedList, 
            RecipeID, 
            SectionHeader
      )     
      SELECT 
            25 AS 'OrderedList',
            rec.RecipeID,
            CAST(ing.IngredientName AS CHAR(25)) + ' ' +
                  CAST(srv.ServingPortionQuantity AS CHAR(22)) + ' ' +
                  CAST(srv.ServingPortionUnit AS CHAR(19)) AS 'SectionHeader'
      FROM dbo.Ingredient ing
            INNER JOIN dbo.RecipeIngredient recing
            ON ing.IngredientID = recing.IngredientID
            INNER JOIN dbo.Recipe rec
            ON recing.RecipeID = rec.RecipeID
            INNER JOIN dbo.ServingPortion srv
            ON recing.ServingPortionID = srv.ServingPortionID
      WHERE rec.RecipeID < 3
      ORDER BY rec.RecipeName, ing.IngredientName

      --SELECT * FROM #RecipeList

      SELECT 
            SectionHeader
      FROM #RecipeList
      ORDER BY RecipeID, OrderedList

      DROP TABLE #RecipeList
--SET STATISTICS IO OFF;