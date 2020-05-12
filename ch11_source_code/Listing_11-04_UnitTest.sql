USE Menu;
GO

-- database unit test for dbo.GetRecipe
DECLARE @RecipeList TABLE
(
      RecipeID          INT,
      RecipeName        VARCHAR(25),
      RecipeDescription VARCHAR(50),
      ServingQuantity   TINYINT,
      MealTypeID        TINYINT,
      PreparationTypeID TINYINT,
      IsActive          BIT,
      DateCreated       DATETIME2(7),
      DateModified      DATETIME2(7)
);

INSERT INTO @RecipeList
(
      RecipeID,
      RecipeName,
      RecipeDescription,
      ServingQuantity,
      MealTypeID,
      PreparationTypeID,
      IsActive,
      DateCreated,
      DateModified
)
EXECUTE [dbo].[GetRecipe];

SELECT RecipeID
FROM @RecipeList
WHERE IsActive = 0;
