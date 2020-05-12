USE Menu;
GO

CREATE TRIGGER dbo.LogIngredientCostHistory  
ON dbo.IngredientCost  
AFTER INSERT, UPDATE   
AS 
	IF (ROWCOUNT_BIG() = 0)
	RETURN;

	INSERT INTO dbo.IngredientCostHistory (IngredientCostID, Cost, DateCreated)
	SELECT inserted.IngredientCostID, inserted.cost, GETDATE()
	FROM inserted;  
GO  