USE Menu;
GO

INSERT INTO dbo.FeatureFlag
(
	FeatureFlagID,
	IsActive,
	DateCreated,
	DateModified
)
VALUES (947,0,GETDATE(),GETDATE());