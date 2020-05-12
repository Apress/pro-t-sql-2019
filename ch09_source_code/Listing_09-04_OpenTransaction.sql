USE Menu;
GO

BEGIN TRAN
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
	'Baked Acorn Squash',
	'Acorn squash with butter and brown sugar',
	4,
	4,
	1,
	1,
	GETDATE(),
	GETDATE()
)