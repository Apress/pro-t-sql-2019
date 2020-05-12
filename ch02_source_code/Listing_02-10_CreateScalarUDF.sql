USE Menu;
GO

CREATE FUNCTION dbo.Ingredient_Price
(
	@Cost DECIMAL(6,3), 
	@Count INT
)
RETURNS DECIMAL (6,3) AS
BEGIN
       RETURN @Cost / @Count;
END
