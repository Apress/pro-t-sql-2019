USE Menu;
GO

SELECT __$start_lsn,
	__$end_lSN,
	__$seqval,
	__$operation,
	__$update_mask,
	RecipeID,
	RecipeName,
	RecipeDescription,
	ServingQuantity,
	MealTypeID,
	PreparationTypeID,
	IsActive,
	DateCreated,
	DateModified,
	__$command_id
FROM cdc.dbo_Recipe_CT