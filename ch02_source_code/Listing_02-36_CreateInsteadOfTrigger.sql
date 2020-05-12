USE Menu;
GO

CREATE TRIGGER dbo.DisableMealType
ON dbo.MealType
INSTEAD OF DELETE
AS
	IF (ROWCOUNT_BIG() = 0)
	RETURN;

	UPDATE meal
	SET IsActive = 0
	FROM dbo.MealType meal
		INNER JOIN deleted del
		ON meal.MealTypeID = del.MealTypeID;
GO