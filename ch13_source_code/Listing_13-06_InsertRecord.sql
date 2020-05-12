USE Menu;
GO

SET IDENTITY_INSERT dbo.Recipe ON;

INSERT INTO dbo.Recipe
	(
		 RecipeID,
		 RecipeName,
		 RecipeDescription,
		 ServingQuantity,
		 MealTypeID,
		 PreparationTypeID,
		 DateCreated,
		 DateModified
	)
VALUES
	(
		0,
		'Inactive Recipe',
		'Deactivated recipes',
		0,
		0,
		0,
		GETDATE(),
		GETDATE()
	);

SET IDENTITY_INSERT dbo.Recipe OFF;