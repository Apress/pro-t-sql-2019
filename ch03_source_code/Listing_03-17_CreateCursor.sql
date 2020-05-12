USE Menu;
GO

SET NOCOUNT ON;

DECLARE @RecipeID INT, 
    @RecipeName VARCHAR(25),  
    @message VARCHAR(50);  
  
PRINT '-------- Recipe Listing --------';  
  
DECLARE recipe_cursor CURSOR FORWARD_ONLY 
FOR   
SELECT RecipeID, RecipeName  
FROM dbo.Recipe  
ORDER BY RecipeID;  
  
OPEN recipe_cursor  
  
FETCH NEXT FROM recipe_cursor   
INTO @RecipeID, @RecipeName  
  
WHILE @@FETCH_STATUS = 0  
BEGIN  
    PRINT ' '  
    SELECT @message = '----- Ingredients For Recipe: ' + @RecipeName + '-----'

    PRINT @message  
  
      SELECT ing.IngredientName, srv.ServingPortionQuantity, srv.ServingPortionUnit
      FROM dbo.Ingredient ing
            INNER JOIN dbo.RecipeIngredient recing
            ON ing.IngredientID = recing.IngredientID
            INNER JOIN dbo.ServingPortion srv
            ON recing.ServingPortionID = srv.ServingPortionID
      WHERE recing.RecipeID = @RecipeID

      FETCH NEXT FROM recipe_cursor INTO @RecipeID, @RecipeName  
END   
CLOSE recipe_cursor;  
DEALLOCATE recipe_cursor;
