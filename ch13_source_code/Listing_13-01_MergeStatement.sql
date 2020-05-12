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

MERGE dbo.Recipe AS [Target]
USING
(VALUES
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
) AS [Source]
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
ON ([Target].RecipeID = [Source].RecipeID)
WHEN MATCHED THEN
	UPDATE SET
		[Target].RecipeName = [Source].RecipeName,
		[Target].RecipeDescription = [Source].RecipeDescription,
		[Target].ServingQuantity = [Source].ServingQuantity,
		[Target].MealTypeID = [Source].MealTypeID,
		[Target].PreparationTypeID = [Source].PreparationTypeID,
		[Target].IsActive = [Source].IsActive,
		[Target].DateCreated = [Source].DateCreated,
		[Target].DateModified = [Source].DateModified
WHEN NOT MATCHED BY TARGET THEN
	INSERT (
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
	VALUES (
		[Source].RecipeID,
		[Source].RecipeName,
		[Source].RecipeDescription,
		[Source].ServingQuantity,
		[Source].MealTypeID,
		[Source].PreparationTypeID,
		[Source].IsActive,
		[Source].DateCreated,
		[Source].DateModified
	);