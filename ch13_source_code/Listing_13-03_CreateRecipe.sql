USE Menu;
GO

CREATE TABLE dbo.Recipe
(
	RecipeID INT IDENTITY(1,1) NOT NULL,
	RecipeName VARCHAR(25) NOT NULL,
	RecipeDescription VARCHAR(50) NOT NULL,
	ServingQuantity TINYINT NOT NULL,
	MealTypeID TINYINT NOT NULL,
	PreparationTypeID TINYINT NOT NULL,
	DateCreated DATETIME2(7) NOT NULL,
	DateModified DATETIME2(7) NOT NULL,
	CONSTRAINT PK_Recipe_RecipeID PRIMARY KEY CLUSTERED (RecipeID),
	CONSTRAINT FK_Recipe_MealTypeID FOREIGN KEY (MealTypeID)
		REFERENCES dbo.MealType (MealTypeID),
	CONSTRAINT FK_Recipe_PreparationTypeID FOREIGN KEY (PreparationTypeID)
		REFERENCES dbo.PreparationType (PreparationTypeID)
);