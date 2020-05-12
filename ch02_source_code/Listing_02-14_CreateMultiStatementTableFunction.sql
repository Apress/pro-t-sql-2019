CREATE OR ALTER FUNCTION dbo.Ingredient_Price
(
	@Cost DECIMAL(6,3),
	@Count DECIMAL(6,3)
)
RETURNS DECIMAL (6,3) AS
BEGIN
	DECLARE @IngPrc DECIMAL (6,3)
		IF @Count = 0
			BEGIN
				SET @IngPrc = 0.00
			END
		ELSE
			BEGIN
				SET @IngPrc = @Cost / @Count;
			END
	RETURN @IngPrc
END;