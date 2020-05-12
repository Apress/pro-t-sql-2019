USE Menu;
GO

CREATE PROCEDURE dbo.RecipeUpsert
	@RecipeID INT,
	@RecipeName VARCHAR(25),
	@RecipeDescription VARCHAR(50),
	@ServingQuantity TINYINT,
	@MealTypeID TINYINT,
	@PreparationTypeID TINYINT,
	@IsActive BIT,
	@DateCreated DATETIME,
	@DateModified DATETIME

AS

IF EXISTS (SELECT RecipeID FROM dbo.Recipe WHERE RecipeID = @RecipeID)
	BEGIN
		UPDATE dbo.Recipe
		SET RecipeName = @RecipeName,
			RecipeDescription = @RecipeDescription,
			ServingQuantity = @ServingQuantity,
			MealTypeID = @MealTypeID,
			PreparationTypeID = @PreparationTypeID,
			IsActive = @IsActive,
			DateModified = @DateModified
		WHERE RecipeID = @RecipeID
	END
ELSE
	BEGIN
	INSERT dbo.Recipe
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
	VALUES
		(
			@RecipeID,
			@RecipeName,
			@RecipeDescription,
			@ServingQuantity,
			@MealTypeID,
			@PreparationTypeID,
			@IsActive,
			@DateCreated,
			@DateModified
		)
	END