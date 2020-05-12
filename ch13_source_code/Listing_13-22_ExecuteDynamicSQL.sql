USE Menu;
GO

EXECUTE dbo.TableByDynamicValues 'Recipe', 'RecipeName', 'Spaghetti';
EXECUTE dbo.TableByDynamicValues 'Ingredient', 'IngredientName', 'Tomato Sauce';