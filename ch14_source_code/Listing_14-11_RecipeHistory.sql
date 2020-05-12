USE Menu;
GO

CREATE TABLE dbo.RecipeHistory
(
	RecipeHistoryID INT NOT NULL,
	RecipeID SMALLINT NOT NULL,
	RecipeHistoryStatusID TINYINT NOT NULL,
	DateCreated DATETIME NOT NULL,
	DateModified DATETIME ,
	CONSTRAINT pk_RecipeHistory_RecipeHistoryID
		PRIMARY KEY CLUSTERED (RecipeHistoryID),
	CONSTRAINT fk_RecipeHistory_RecipeID
		FOREIGN KEY (RecipeID)
		REFERENCES dbo.Recipe(RecipeID),
	CONSTRAINT fk_RecipeHistory_RecipeHistoryStatusID
		FOREIGN KEY (RecipeHistoryStatusID)
		REFERENCES dbo.RecipeHistoryStatus(RecipeHistoryStatusID)
);