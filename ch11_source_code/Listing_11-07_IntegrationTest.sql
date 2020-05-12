USE Menu;
GO

DECLARE @RecipeID INT
DECLARE @MealTypeID INT

EXECUTE dbo.InsertRecepie
      @RecipeName = 'Eggplant Parmesan',
      @RecipeDescription = 'A recipe to make eggplant parmesan',
      @ServingQuantity = 6,
      @MealTypeID = @MealTypeID,
      @PreparationTypeID = 1,
      @IsActive = 1

EXECUTE dbo.InsertRecipeIngredient  
      @RecipeID


INSERT INTO @RecipeMeal (RecipeName, IngredientName, IsActive, DateCreated, DateModified)
EXECUTE dbo.GetRecipeAndIngreientByMealTypeID @MealTypeID

SELECT RecipeName
FROM @RecipeMeal
WHERE RecipeID = @RecipeID
