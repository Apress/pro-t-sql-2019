USE Menu;
GO

CREATE OR ALTER PROCEDURE dbo.InsertRecepie
      @RecipeName        VARCHAR(25),
      @RecipeDescription VARCHAR(50),
      @ServingQuantity   TINYINT,
      @MealTypeID        TINYINT,
      @PreparationTypeID TINYINT,
      @IsActive          BIT,
      @DateCreated       DATETIME2(7),
      @DateModified      DATETIME2(7)

AS

      INSERT INTO dbo.Recipe
      (
            RecipeName,
            RecipeDescription,
            ServingQuantity,
            MealTypeID,
            PreparationTypeID,
            IsActive
      )
      VALUES
      (
            @RecipeName,
            @RecipeDescription,
            @ServingQuantity,
            @MealTypeID,
            @PreparationTypeID,
            @IsActive
      )
