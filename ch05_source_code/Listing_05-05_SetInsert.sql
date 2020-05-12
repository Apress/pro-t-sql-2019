USE Menu;
GO

CREATE TABLE #TempIngredientNutrition
(
	IngredientID	INT			NOT NULL,
	IngredientName	VARCHAR(25)	NOT NULL,
	Calories		TINYINT		NOT NULL,
	Sugar			TINYINT		NOT NULL,
	Fiber			TINYINT		NOT NULL,
	Protein			TINYINT		NOT NULL
)

INSERT INTO #TempIngredientNutrition
(
	IngredientID,
	IngredientName,
	Calories,
	Sugar,
	Fiber,
	Protein
)
SELECT
	ing.IngredientID,
	ing.IngredientName,
	nutr.Calories,
	nutr.Sugar,
	nutr.Fiber,
	nutr.Protein
FROM dbo.Ingredient ing
 INNER JOIN dbo.IngredientNutrition nutr
 ON ing.IngredientID = nutr.IngredientID