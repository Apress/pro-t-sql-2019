USE Menu;
GO

CREATE FUNCTION dbo.IngredientCostByIngredientID (@IngredientID INT)
RETURNS @Output TABLE
(
	IngredientName VARCHAR(25),
	IngredientCost DECIMAL(6,3)
)
AS
	BEGIN
		INSERT INTO @Output (IngredientName, IngredientCost)
		SELECT ing.IngredientName, ingcos.Cost
		FROM dbo.Ingredient ing
			INNER JOIN dbo.IngredientCost ingcos
			ON ing.IngredientID = ingcos.IngredientID
		WHERE ing.IngredientID = @IngredientID;
		RETURN;
	END;
GO 