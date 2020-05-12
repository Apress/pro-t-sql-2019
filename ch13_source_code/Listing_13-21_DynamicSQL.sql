USE Menu;
GO

CREATE PROCEDURE dbo.TableByDynamicValues
 @TableName VARCHAR(100),
 @ColumnName VARCHAR(25),
 @ColumnValue VARCHAR(25)
AS
DECLARE @ObjectID INT;
DECLARE @ColumnList VARCHAR(500);
DECLARE @Query NVARCHAR(1000);
SELECT @ObjectID = OBJECT_ID(@TableName);

SELECT @ColumnList = STRING_AGG (ISNULL([name],'∗'), ',')
FROM sys.columns
WHERE [object_id] = @ObjectID
	AND [name] NOT IN ('IsActive','DateCreated','DateModified');

SET @Query =
 'SELECT ' + @ColumnList +
 ' FROM ' + @TableName +
 ' WHERE ' + @ColumnName + ' = @ColumnValue';

EXECUTE sp_executesql @Query,
 N'@ColumnName NVARCHAR(25), @ColumnValue NVARCHAR(25)',
 @ColumnName = @ColumnName,
 @ColumnValue = @ColumnValue;