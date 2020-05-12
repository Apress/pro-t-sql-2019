USE Menu;
GO

SELECT
	SUM(
		CASE WHEN DateCreated < '1/1/2019'
			THEN 1
			ELSE 0
		END
	) AS Partition1,
	SUM(
		CASE WHEN DateCreated < '4/1/2019'
			THEN 1
			ELSE 0
		END
	) AS Partition2,
	SUM(
		CASE WHEN DateCreated < '7/1/2019'
			THEN 1
			ELSE 0
		END
	) AS Partition3,
	SUM(
		CASE WHEN DateCreated >= '7/1/2019'
			THEN 1
			ELSE 0
		END
	) AS Partition4
FROM dbo.RecipeHistory;