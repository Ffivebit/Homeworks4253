SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER EX4
   ON  Bus
   AFTER Insert
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @VehicleID INT
	DECLARE @Route INT

	SELECT @VehicleID = i.vehicle, @Route = i.ScheduleId
	FROM inserted i;
    
	INSERT INTO driverStat(DESC_STAT,DATE_STAT)
	VALUES('A new Vehicle is inserted with an id= '+ CAST((@VehicleID AS varchar(18)) + ', Which will go on the route = ' + CAST((@Route AS varchar(18)),GETDATE());

END
GO
--Trigger

----------------------------

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE EX5 
	-- Add the parameters for the stored procedure here
	@vehicleID AS INT
	
AS
BEGIN

	SET NOCOUNT ON;


	SELECT D.BusVehicle, SS.Name, arrival
	FROM Driver as D
		INNER JOIN
		BUS AS B
			ON D.BusVehicle	= B.vehicle
		INNER JOIN
		Schedule AS S
			ON B.ScheduleId = S.id
		INNER JOIN 
		Route AS R
			ON S.RouteId = R.id
		INNER JOIN
		RouteStop AS RS
			ON RS.RouteId = R.id
		INNER JOIN
		Stop AS SS
				ON RS.StopId = SS.id

WHERE @vehicleID = B.vehicle

		
		
END
GO

--Procedure

-----------------------------------------------------
USE [MidTerm_4253]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[DaysInMonth]
(
	@DateM DATETIME
)
RETURNS INT
AS
BEGIN

	RETURN  DAY(EOMONTH(@DateM));

END
-----------------------------------------------------
SELECT *
FROM RouteStop AS RS
	INNER JOIN 
	Stop AS S
		ON RS.StopId = S.id

WHERE RS.RouteId =  1
--View