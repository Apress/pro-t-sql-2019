USE Menu;
GO

DECLARE @IngredientID         INT = 1;
DECLARE @ServingPortionID     INT = 1;
DECLARE @Cost                 DECIMAL(5,2) = 5.98
DECLARE @IsActive             BIT = 1;
DECLARE @DateCreated          DATETIME = GETDATE();
DECLARE @DateModified         DATETIME = GETDATE();   

BEGIN TRY
      BEGIN TRAN
            INSERT INTO dbo.IngredientCost 
            (
                  IngredientID, 
                  ServingPortionID, 
                  Cost, 
                  IsActive, 
                  DateCreated, 
                  DateModified
            )
            VALUES 
            (
                  @IngredientID,
                  @ServingPortionID,
                  @Cost,
                  @IsActive,
                  @DateCreated,
                  @DateModified
            )

      COMMIT TRANSACTION
END TRY

BEGIN CATCH
      PRINT 'Insert Failed'

      ROLLBACK TRANSACTION
END CATCH
