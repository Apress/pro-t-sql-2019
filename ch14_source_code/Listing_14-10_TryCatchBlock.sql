USE Menu;
GO

CREATE PROCEDURE dbo.RecipeInsert
	@RecipeName VARCHAR(25),
	@RecipeDescription VARCHAR(50),
	@ServingQuantity TINYINT,
	@MealTypeID TINYINT,
	@PreparationTypeID TINYINT,
	@IsActive BIT,
	@DateCreated DATETIME2(7),
	@DateModified DATETIME2(7)

AS

BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO dbo.Recipe
		(
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
			@RecipeName,
			@RecipeDescription,
			@ServingQuantity,
			@MealTypeID,
			@PreparationTypeID,
			@IsActive,
			@DateCreated,
			@DateModified
		)
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
END CATCH