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
VALUES (1, 'Italian Sausage', 180, 5, 1, 18)

INSERT INTO #TempIngredientNutrition
(
	IngredientID,
	IngredientName,
	Calories,
	Sugar,
	Fiber,
	Protein
)
VALUES (2, 'Tomato Sauce', 60, 7, 2, 1)

INSERT INTO #TempIngredientNutrition
(
	IngredientID,
	IngredientName,
	Calories,
	Sugar,
	Fiber,
	Protein
)
VALUES (3, 'Diced Tomatoes', 20, 2, 3, 1)