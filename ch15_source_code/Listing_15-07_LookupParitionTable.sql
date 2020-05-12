USE Menu;
GO

SELECT tbl.[name] AS TableName,
	sch.[name] AS PartitionScheme,
	fnc.[name] AS PartitionFunction,
	prt.partition_number,
	fnc.[type_desc],
	rng.boundary_id,
	rng.[value] AS BoundaryValue,
	prt.[rows]
FROM sys.tables tbl
	INNER JOIN sys.indexes idx
	ON tbl.[object_id] = idx.[object_id]
	INNER JOIN sys.partitions prt
	ON idx.[object_id] = prt.[object_id]
	AND idx.index_id = prt.index_id
	INNER JOIN sys.partition_schemes AS sch
	ON idx.data_space_id = sch.data_space_id
	INNER JOIN sys.partition_functions AS fnc
	ON sch.function_id = fnc.function_id
	LEFT JOIN sys.partition_range_values AS rng
	ON fnc.function_id = rng.function_id
	AND rng.boundary_id = prt.partition_number
WHERE tbl.[name] = 'RecipeHistory'
	AND idx.[type] <= 1
ORDER BY prt.partition_number; 