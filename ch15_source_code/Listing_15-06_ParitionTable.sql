USE Menu;
GO

CREATE TABLE dbo.RecipeHistory
(
	RecipeHistoryID BIGINT NOT NULL IDENTITY(1,1),
	RecipeID SMALLINT NOT NULL,
	RecipeHistoryStatusID TINYINT NOT NULL,
	DateCreated DATETIME NOT NULL,
	DateModified DATETIME NULL,
	CONSTRAINT pk_RecipeHistory_RecipeHistoryID
		PRIMARY KEY NONCLUSTERED (RecipeHistoryID, DateCreated),
	CONSTRAINT fk_RecipeHistory_RecipeID
		FOREIGN KEY (RecipeID)
		REFERENCES dbo.Recipe(RecipeID),
	CONSTRAINT fk_RecipeHistory_RecipeHistoryStatusID
		FOREIGN KEY (RecipeHistoryStatusID)
		REFERENCES dbo.RecipeHistoryStatus (RecipeHistoryStatusID)
)
ON RecipeHistRange (DateCreated);