USE Menu;
GO

UPDATE dbo.FeatureFlag
SET IsActive = 1,
	DateModified = GETDATE()
WHERE FeatureFlagID = 947;