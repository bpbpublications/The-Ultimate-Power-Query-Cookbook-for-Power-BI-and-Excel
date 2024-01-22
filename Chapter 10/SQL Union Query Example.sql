SELECT TOP 1000 [VendorID]
      ,[tpep_pickup_datetime] AS pickup_datetime
      ,[tpep_dropoff_datetime] AS dropoff_datetime
      ,[passenger_count]
      ,[trip_distance]
      ,[RatecodeID]
      ,[store_and_fwd_flag]
      ,[PULocationID]
      ,[DOLocationID]
      ,[payment_type]
      ,[fare_amount]
      ,[extra]
      ,[mta_tax]
      ,[tip_amount]
      ,[tolls_amount]
      ,[improvement_surcharge]
      ,[total_amount]
      ,[congestion_surcharge]
      ,[Airport_fee]
	,'Yellow' AS taxi_type
	,null AS ehail_fee
	,null AS trip_type

  FROM [dbo].[trip_data_yellow]

  UNION

  SELECT [VendorID]
      ,[lpep_pickup_datetime] AS pickup_datetime
      ,[lpep_dropoff_datetime] AS dropoff_datetime
      ,[passenger_count]
      ,[trip_distance]
      ,[RatecodeID]
      ,[store_and_fwd_flag]
      ,[PULocationID]
      ,[DOLocationID]
      ,[payment_type]
      ,[fare_amount]
      ,[extra]
      ,[mta_tax]
      ,[tip_amount]
      ,[tolls_amount]
      ,[improvement_surcharge]
      ,[total_amount]
      ,[congestion_surcharge]
      ,null AS Airport_fee
,'Green' AS taxi_type
      ,[ehail_fee]
      ,[trip_type]
  FROM [dbo].[trip_data_green]
