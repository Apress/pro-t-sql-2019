USE Menu;
GO

DECLARE @IsActive NVARCHAR(1);

SET @IsActive = 1;

SELECT RecipeID,
	RecipeName,
	RecipeDescription,
	ServingQuantity,
	MealTypeID,
	PreparationTypeID
	IsActive,
	DateCreated,
	DateModified
FROM dbo.Recipe
WHERE IsActive = @IsActive;