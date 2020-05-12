USE Menu;
GO

ALTER TABLE dbo.RecipeHistory2019
WITH CHECK ADD CONSTRAINT ck_RecipeHistory2019_MinDateCreated
CHECK
(
	DateCreated IS NOT NULL
	AND DateCreated >= '01/01/2019'
);

ALTER TABLE dbo.RecipeHistory2019
WITH CHECK ADD CONSTRAINT ck_RecipeHistory2019_MaxDateCreated
CHECK
(
	DateCreated IS NOT NULL
	AND DateCreated < '01/01/2020'
);

ALTER TABLE dbo.RecipeHistory2018
WITH CHECK ADD CONSTRAINT ck_RecipeHistory2018_MinDateCreated
CHECK
(
	DateCreated IS NOT NULL
	AND DateCreated >= '01/01/2018'
);

ALTER TABLE dbo.RecipeHistory2018
WITH CHECK ADD CONSTRAINT ck_RecipeHistory2018_MaxDateCreated
CHECK
(
	DateCreated IS NOT NULL
	AND DateCreated < '01/01/2019'
);