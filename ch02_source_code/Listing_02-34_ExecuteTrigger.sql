USE Menu;
GO

INSERT INTO dbo.IngredientCost (IngredientID, ServingPortionID, Cost,
IsActive, DateCreated, DateModified)
VALUES (1, 1, 5.98, 1, GETDATE(), GETDATE())