USE Menu;
GO

CREATE TABLE dbo.RecipeHistoryPartition
(
	RecipeHistoryID INT NOT NULL,
	RecipeID SMALLINT NOT NULL,
	RecipeHistoryStatusID TINYINT NOT NULL,
	DateCreated DATETIME NOT NULL,
	DateModified DATETIME NULL,
	CONSTRAINT pk_RecipeHistoryPartition_RecipeHistoryID
		PRIMARY KEY (RecipeHistoryID),
	CONSTRAINT fk_RecipeHistoryPartition_RecipeID
		FOREIGN KEY (RecipeID)
		REFERENCES dbo.Recipe(RecipeID),
	CONSTRAINT fk_RecipeHistoryParition_RecipeHistoryStatusID
		FOREIGN KEY (RecipeHistoryStatusID)
		REFERENCES dbo.RecipeHistoryStatus(RecipeHistoryStatusID)
)
ON RecipeHistRange (DateCreated);