USE Menu;
GO

CREATE PARTITION SCHEME RecipeHistRange
AS PARTITION RecipeHistFunc TO
(
	RecipeHistory2018,
	RecipeHistory2019Q1,
	RecipeHistory2019Q2,
	RecipeHistory2019Q3
);