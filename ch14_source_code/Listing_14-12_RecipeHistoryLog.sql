USE Menu;
GO

CREATE TABLE dbo.RecipeHistoryLog
(
	RecipeHistoryLogID INT NOT NULL,
	RecipeHistoryID INT NOT NULL,
	DateCreated DATETIME NOT NULL,
	DateModified DATETIME ,
	CONSTRAINT pk_RecipeHistoryLog_RecipeHistoryLogID
		PRIMARY KEY CLUSTERED (RecipeHistoryLogID),
	CONSTRAINT fk_RecipeHistoryLog_RecipeHistoryID
		FOREIGN KEY (RecipeHistoryID)
		REFERENCES dbo.RecipeHistory(RecipeHistoryID)
);