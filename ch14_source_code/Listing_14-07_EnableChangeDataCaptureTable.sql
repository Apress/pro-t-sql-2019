USE Menu;
GO

EXECUTE sys.sp_cdc_enable_table
	@source_schema = 'dbo',
	@source_name = 'Recipe',
	@role_name = NULL;
GO