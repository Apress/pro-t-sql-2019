USE Menu;
GO

CREATE TABLE dbo.RecipeHistory2019
(
	RecipeHistoryID INT NOT NULL,
	RecipeID SMALLINT NOT NULL,
	RecipeHistoryStatusID TINYINT NOT NULL,
	DateCreated DATETIME NOT NULL,
	DateModified DATETIME NULL,
	CONSTRAINT pk_RecipeHistory2019_RecipeHistoryID
		PRIMARY KEY NONCLUSTERED (RecipeHistoryID, DateCreated),
	CONSTRAINT fk_RecipeHistory2019_RecipeID
		FOREIGN KEY (RecipeID)
		REFERENCES dbo.Recipe(RecipeID),
	CONSTRAINT fk_RecipeHistory2019_RecipeHistoryStatusID
		FOREIGN KEY (RecipeHistoryStatusID)
		REFERENCES dbo.RecipeHistoryStatus(RecipeHistoryStatusID)
);

CREATE CLUSTERED INDEX ix_RecipeHistory2019_DateCreated
ON dbo.RecipeHistory2019 (DateCreated)
ON RecipeHistRange (DateCreated);

CREATE TABLE dbo.RecipeHistory2018
(
	RecipeHistoryID INT NOT NULL,
	RecipeID SMALLINT NOT NULL,
	RecipeHistoryStatusID TINYINT NOT NULL,
	DateCreated DATETIME NOT NULL,
	DateModified DATETIME NULL,
	CONSTRAINT pk_RecipeHistory2018_RecipeHistoryID
		PRIMARY KEY NONCLUSTERED (RecipeHistoryID, DateCreated),
	CONSTRAINT fk_RecipeHistory2018_RecipeID
		FOREIGN KEY (RecipeID)
		REFERENCES dbo.Recipe(RecipeID),
	CONSTRAINT fk_RecipeHistory2018_RecipeHistoryStatusID
		FOREIGN KEY (RecipeHistoryStatusID)
		REFERENCES dbo.RecipeHistoryStatus(RecipeHistoryStatusID)
)
ON RecipeHistRange (DateCreated);

CREATE CLUSTERED INDEX ix_RecipeHistory2018_DateCreated
ON dbo.RecipeHistory2018 (DateCreated)
ON RecipeHistRange (DateCreated);