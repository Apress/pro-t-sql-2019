USE Menu;
GO

ALTER TABLE dbo.RecipeHistory
DROP CONSTRAINT pk_RecipeHistory_RecipeHistoryID;

ALTER TABLE dbo.RecipeHistory
ADD CONSTRAINT pk_RecipeHistory_RecipeHistoryID
PRIMARY KEY NONCLUSTERED (RecipeHistoryID, DateCreated);

CREATE CLUSTERED INDEX ix_RecipeHistory_DateCreated
ON dbo.RecipeHistory (DateCreated)
ON RecipeHistRange (DateCreated);