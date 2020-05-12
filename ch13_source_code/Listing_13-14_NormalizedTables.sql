CREATE TABLE dbo.MealType
(
	MealTypeID			TINYINT		IDENTITY(1,1)	NOT NULL,
	MealTypeName		VARCHAR(25)					NOT NULL,
	MealTypeDescription VARCHAR(50)					NOT NULL,
	IsActive			BIT
		CONSTRAINT DF_MealType_IsActive
			DEFAULT 1								NOT NULL,
	DateCreated			DATETIME2(7)				NOT NULL,
	DateModified		DATETIME2(7)				NOT NULL,
	CONSTRAINT PK_MealType_MealTypeID
		PRIMARY KEY CLUSTERED (MealTypeID)
);
GO

CREATE TABLE dbo.PreparationType
(
	PreparationTypeID	TINYINT IDENTITY(1,1) NOT NULL,
	PreparationTypeName	VARCHAR(25) NOT NULL,
	IsActive			BIT
 CONSTRAINT DF_PreparationType_IsActive
 DEFAULT 1 NOT NULL,
 DateCreated DATETIME2(7) NOT NULL,
 DateModified DATETIME2(7) NOT NULL,
 CONSTRAINT PK_PreparationType_PreparationTypeID
 PRIMARY KEY CLUSTERED (PreparationTypeID)
);
GO

CREATE TABLE dbo.RecipeModified
(
	RecipeID			INT IDENTITY(1,1)	NOT NULL,
	RecipeName			VARCHAR(25)			NOT NULL,
	RecipeDescription	VARCHAR(50)			NOT NULL,
	ServingQuantity		TINYINT				NOT NULL,
	MealTypeID			TINYINT				NOT NULL,
	PreparationTypeID	TINYINT				NOT NULL,
	IsActive			BIT
		CONSTRAINT DF_RecipeModified_IsActive
			DEFAULT 1 NOT NULL,
	DateCreated			DATETIME2(7)		NOT NULL,
	DateModified		DATETIME2(7)		NOT NULL,
	CONSTRAINT PK_RecipeModified_RecipeID
	PRIMARY KEY CLUSTERED (RecipeID),
	CONSTRAINT FK_RecipeModified_MealTypeID
		FOREIGN KEY (MealTypeID)
		REFERENCES dbo.MealType (MealTypeID),
	CONSTRAINT FK_RecipeModified_PreparationTypeID
		FOREIGN KEY (PreparationTypeID)
		REFERENCES dbo.PreparationType (PreparationTypeID)
);