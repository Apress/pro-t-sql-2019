USE Menu;
GO

CREATE VIEW dbo.RecipeSecure
WITH SCHEMABINDING
AS
SELECT RecipeName, RecipeDescription, IsActive
FROM dbo.Recipe;