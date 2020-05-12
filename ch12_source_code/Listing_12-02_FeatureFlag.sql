USE Menu;
GO

CREATE TABLE dbo.FeatureFlag
(
	FeatureFlagID INT,
	IsActive BIT,
	DateCreated DATETIME,
	DateModified DATETIME
);