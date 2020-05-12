USE Menu;
GO

/*-------------------------------------------------------------*\
Name:			dbo.AvailableMeal
Author:			Elizabeth Noble
Created Date:	03/13/2019
Description:	Simple view to display all meals with ingredients
Sample Usage:
	SELECT MealTypeName, RecipeName FROM dbo.AvailableMeal
Change Log:
	Update on 03/31/2019 by enoble: Added header to view
\*-------------------------------------------------------------*/
CREATE VIEW dbo.AvailableMeal
AS
SELECT meal.MealTypeName, rec.RecipeName, rec.ServingQuantity, ing.
IngredientName
FROM dbo.Recipe rec
 INNER JOIN dbo.MealType meal
 ON rec.MealTypeID = meal.MealTypeID
 INNER JOIN dbo.RecipeIngredient recing
 ON rec.RecipeID = recing.RecipeID
 INNER JOIN dbo.Ingredient ing
 ON recing.IngredientID = ing.IngredientID