USE Menu;
GO

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
	'Lee"s Hamburgers',
	'The best hamburgers',
	4,
	2,
	1,
	1,
	GETDATE(),
	GETDATE()
);