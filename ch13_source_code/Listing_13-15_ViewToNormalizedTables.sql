USE Menu;
GO

CREATE VIEW dbo.Recipe

AS

	SELECT rec.RecipeID,
		rec.RecipeName,
		rec.RecipeDescription,
		rec.ServingQuantity,
		mtp.MealTypeName,
		prp.PreparationTypeName,
		rec.IsActive,
		rec.DateCreated,
		rec.DateModified
	FROM dbo.RecipeModified rec
		INNER JOIN dbo.MealType mtp
		ON rec.MealTypeID = mtp.MealTypeID
		INNER JOIN dbo.PreparationType prp
		ON rec.PreparationTypeID = prp.PreparationTypeID