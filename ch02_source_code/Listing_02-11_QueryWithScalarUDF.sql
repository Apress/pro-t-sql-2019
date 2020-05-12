USE Menu;
GO

SELECT ing.IngredientName, dbo.Ingredient_Price(ingcos.Cost, srv.ServingPortionQuantity)
FROM dbo.Ingredient ing
	INNER JOIN dbo.IngredientCost ingcos
	ON ing.IngredientID = ingcos.IngredientID
	INNER JOIN dbo.ServingPortion srv
	ON ingcos.ServingPortionID = srv.ServingPortionID