USE Menu;
GO

CREATE TABLE dbo.ApplicationRule
(
	ApplicationRuleID IDENTITY(1,1) INT NOT NULL,
	ApplicationRuleDescription VARCHAR(50) NOT NULL,
	IsActive BIT NOT NULL,
	DateCreated DATETIME NOT NULL,
	DateModified DATETIME NULL,
	CONSTRAINT PK_ApplicationRule_ApplicationRuleID
		PRIMARY KEY CLUSTERED (ApplicationRuleID)
);