USE Menu;
GO

CREATE TABLE dbo.Recipe
(
	RecipeID			INT			IDENTITY(1,1)	NOT NULL,
	RecipeName			VARCHAR(25)					NOT NULL,
	RecipeDescription	VARCHAR(50)					NOT NULL,
	ServingQuantity		TINYINT						NOT NULL,
	MealTypeName		VARCHAR(25)					NOT NULL,
	PreparationTypeName VARCHAR(25)					NOT NULL,
	IsActive			BIT
		CONSTRAINT DF_Recipe_IsActive
			DEFAULT 1								NOT NULL,
	DateCreated			DATETIME2(7)				NOT NULL,
	DateModified		DATETIME2(7)				NOT NULL,
	CONSTRAINT PK_Recipe_RecipeID
		PRIMARY KEY CLUSTERED (RecipeID)
);