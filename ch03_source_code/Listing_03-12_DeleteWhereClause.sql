USE Menu;
GO

BEGIN TRAN

DELETE FROM rec
FROM dbo.Recipe rec
	INNER JOIN dbo.MealType meal
	ON rec.MealTypeID = meal.MealTypeID
WHERE meal.MealTypeID = 2

COMMIT