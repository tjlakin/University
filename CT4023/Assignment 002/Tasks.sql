-- HD1a
SELECT Hol_Code, Hol_Description, Duration 
FROM tblHol_Detail
WHERE Duration > 10 and Cost <= 2000;

-- HD1b
SELECT Country_Visit,
COUNT(Country_Visit) AS "Number of Visits"
FROM tblHol_Detail
WHERE Country_Visit = 'USA'
GROUP BY Country_Visit;

--HD1c
SELECT Country_Visit,
COUNT(Country_Visit)
FROM tblHol_Detail
GROUP BY Country_Visit;

--HD1d
SELECT tblSites_Aval.Site_Name, tblHol_Detail.Hol_Code, tblHol_Detail.Hol_Description, tblHol_Detail.Duration
FROM tblHol_Detail
INNER JOIN tblSites_Visited
ON tblHol_Detail.Hol_Code = tblSites_Visited.Hol_Code
INNER JOIN tblSites_Aval
ON tblSites_Visited.Site_Code = tblSites_Aval.Site_Code
WHERE tblSites_Aval.Site_Code = 101;

--HD1e
SELECT tblDiff_Rate_Detail.Dif_Description, tblHol_Detail.Hol_Code
FROM tblHol_Detail
FULL OUTER JOIN tblDiff_Rate_Detail
ON tblHol_Detail.Dif_Rate_Code = tblDiff_Rate_Detail.Dif_Rate_Code
ORDER BY tblDiff_Rate_Detail.Dif_Description,  tblHol_Detail.Hol_Code; 

--HD3a view
CREATE OR REPLACE VIEW viewHD3a AS
SELECT tblSites_Aval.Site_Name, tblHol_Detail.Hol_Code,tblHol_Detail.Hol_Description, tblDeparture_Date.Departure_Date
FROM tblHol_Detail
INNER JOIN tblSites_Visited
ON tblHol_Detail.Hol_Code = tblSites_Visited.Hol_Code
INNER JOIN tblSites_Aval
ON tblSites_Visited.Site_Code = tblSites_Aval.Site_Code
INNER JOIN tblDeparture_Date
ON tblHol_Detail.Hol_Code = tblDeparture_Date.Hol_Code;

--HD3a select
SELECT * FROM viewHD3a
WHERE Departure_Date BETWEEN TO_DATE('06/01/2015') AND TO_DATE('06/30/2015')
ORDER BY Departure_Date;


--HD3b view
CREATE OR REPLACE VIEW viewHD3b AS
SELECT Hol_Code, Hol_Description,
DECODE(Country_Visit, 'USA', 'America',
		      'India', 'Asia',
		      'China', 'Asia',
		      'Spain', 'Europe') AS "Continent"
FROM tblHol_Detail;

--HD3b select
SELECT * from viewHD3b;

--HD4a
SELECT ROUND(AVG(Cost),2) AS "Average Holiday Cost"
FROM tblHol_Detail;

--HD4b
SELECT tblHol_Detail.Hol_Code, Duration, TO_CHAR(tblDeparture_Date.Departure_Date, 'DD/MON/YYYY' ) AS "Start Date", TO_CHAR((tblDeparture_Date.Departure_Date + tblHol_Detail.Duration), 'DD/MON/YYYY') AS "Finish Date"
FROM tblHol_Detail
INNER JOIN tblDeparture_Date
ON tblHol_Detail.Hol_Code = tblDeparture_Date.Hol_Code;

--HD4c
SELECT tblHol_Detail.Hol_Code, tblHol_Detail.Country_Visit, tblHol_Detail.Duration, tblHol_Detail.Dif_Rate_Code, tblHol_Detail.Hol_Description, tblHol_Detail.Cost, tblSites_Aval.Site_Code, tblSites_Aval.Site_Name, tblDeparture_Date.Departure_Date
FROM tblHol_Detail
INNER JOIN tblSites_Visited
ON tblHol_Detail.Hol_Code = tblSites_Visited.Hol_Code
INNER JOIN tblDeparture_Date
ON tblHol_Detail.Hol_Code = tblDeparture_Date.Hol_Code
RIGHT OUTER JOIN tblSites_Aval
ON tblSites_Visited.Site_Code = tblSites_Aval.Site_Code
WHERE tblDeparture_Date.Departure_Date
Between (Last_Day(Add_Months(SYSDATE, -2))+1) AND (Last_Day(Add_Months(SYSDATE, -1)))
ORDER BY Departure_Date;

--HD4d
SELECT  (Last_Day(Add_Months(SYSDATE, -2))+1), (Last_Day(Add_Months(SYSDATE, -1))) 
FROM dual;

--HD5a
SELECT tblSites_Aval.Site_Code, tblSites_Aval.Site_Name
FROM  tblSites_Aval
INNER JOIN tblSites_Visited
ON tblSites_Aval.Site_Code = tblSites_Visited.Site_Code
INNER JOIN tblHol_Detail
ON tblSites_Visited.Hol_Code = tblHol_Detail.Hol_Code
INNER JOIN tblDiff_Rate_Detail
ON tblHol_Detail.Dif_Rate_Code = tblDiff_Rate_Detail.Dif_Rate_Code
WHERE LENGTH(tblDiff_Rate_Detail.Dif_Description) > 6
GROUP BY tblSites_Aval.Site_Code, tblSites_Aval.Site_Name
ORDER BY tblSites_Aval.Site_Code;

--HD5b
SELECT tblSites_Aval.Site_Code, tblSites_Aval.Site_Name, tblDiff_Rate_Detail.Dif_Description AS "Difficulty"
FROM tblSites_Aval
FULL OUTER JOIN tblSites_Visited
ON tblSites_Aval.Site_Code = tblSites_Visited.Site_Code
FULL OUTER JOIN tblHol_Detail 
ON tblSites_Visited.Hol_Code = tblHol_Detail.Hol_Code
LEFT OUTER JOIN tblDiff_Rate_Detail
ON tblHol_Detail.Dif_Rate_Code = tblDiff_Rate_Detail.Dif_Rate_Code

MINUS

SELECT tblSites_Aval.Site_Code, tblSites_Aval.Site_Name, tblDiff_Rate_Detail.Dif_Description
FROM tblDiff_Rate_Detail
INNER JOIN tblHol_Detail
ON tblDiff_Rate_Detail.Dif_Rate_Code = tblHol_Detail.Dif_Rate_Code
INNER JOIN tblSites_Visited
ON tblHol_Detail.Hol_Code = tblSites_Visited.Hol_Code
INNER JOIN tblSites_Aval
ON tblSites_Visited.Site_Code = tblSites_Aval.Site_Code
WHERE (
	tblDiff_Rate_Detail.Dif_Description = 'Easy'
	OR tblDiff_Rate_Detail.Dif_Description = 'Moderate'
	);



--HD6a
SELECT tblDiff_Rate_Detail.Dif_Description,
COUNT(tblHol_Detail.Dif_Rate_Code) AS "Number Of Holidays"
FROM tblDiff_Rate_Detail
LEFT OUTER JOIN tblHol_Detail
ON tblDiff_Rate_Detail.Dif_Rate_Code = tblHol_Detail.Dif_Rate_Code
GROUP BY tblDiff_Rate_Detail.Dif_Description;

--HD6b
SELECT tblDiff_Rate_Detail.Dif_Description,
COUNT(tblHol_Detail.Dif_Rate_Code) AS "Number Of Holidays"
FROM tblDiff_Rate_Detail
LEFT OUTER JOIN tblHol_Detail
ON tblDiff_Rate_Detail.Dif_Rate_Code = tblHol_Detail.Dif_Rate_Code
GROUP BY tblDiff_Rate_Detail.Dif_Description
HAVING COUNT(tblHol_Detail.Dif_Rate_Code) >=3;

--HD6c
SELECT Hol_Code, Country_Visit, Duration, Dif_Rate_Code, Hol_Description, Cost, DailyCost AS "Daily Cost"
FROM (SELECT Hol_Code, Country_Visit, Duration, Dif_Rate_Code, Hol_Description, Cost, 
ROUND((Cost / Duration),2) AS DailyCost, 
RANK() OVER (ORDER BY ROUND((Cost / Duration),2)) AS rnk 
FROM tblHol_Detail)
WHERE rnk = 1;

-- HD6d view
CREATE OR REPLACE VIEW viewHD6d AS
SELECT Hol_Code, Hol_Count
FROM(SELECT Hol_Code, COUNT(Site_Code) AS Hol_Count,
RANK() OVER (ORDER BY COUNT(Site_Code) DESC) AS rnk
FROM tblSites_Visited
GROUP BY Hol_Code)
WHERE rnk =1;

-- HD6d SELECT
SELECT tblHol_Detail.Hol_Code, tblHol_Detail.Country_Visit, tblHol_Detail.Duration, tblHol_Detail.Dif_Rate_Code, tblHol_Detail.Hol_Description, tblHol_Detail.Cost, Hol_Count AS "Number Of Visits"
FROM viewHD6d
INNER JOIN tblHol_Detail
ON viewHD6d.Hol_Code = tblHol_Detail.Hol_Code;

--HD7a
DROP TABLE tbl_HD7a CASCADE CONSTRAINTS;
CREATE TABLE tbl_HD7a (
	SiteCode NUMBER(3) NOT NULL,
	SiteName VARCHAR2(200) NOT NULL
);

ALTER TABLE tbl_HD7a 
	ADD CONSTRAINT pk_tblHD7a PRIMARY KEY (SiteCode);

DROP SEQUENCE HD7Atask;
CREATE SEQUENCE HD7Atask
	START WITH 100 
	INCREMENT BY 1
	
INSERT INTO tbl_HD7a
(SiteCode, SiteName)
VALUES(HD7Atask.NEXTVAL, 'Yosemite National Park');
INSERT INTO tbl_HD7a
(SiteCode, SiteName)
VALUES(HD7Atask.NEXTVAL, 'Xian');
INSERT INTO tbl_HD7a
(SiteCode, SiteName)
VALUES(HD7Atask.NEXTVAL, 'Seville');
INSERT INTO tbl_HD7a
(SiteCode, SiteName)
VALUES(HD7Atask.NEXTVAL, 'Grand Canyon');
INSERT INTO tbl_HD7a
(SiteCode, SiteName)
VALUES(HD7Atask.NEXTVAL, 'San Francisco');

--HD7b
CREATE OR REPLACE Function taskHD7b
    (numval IN number, discount IN number)
    RETURN number 
IS  
	num1 number;
    dis number;
BEGIN
	RETURN (numval-(numval*discount/100));
END;

SELECT taskHD7b(75,15) AS "Discount Value" from dual

--HD8a RESET TABLE DFICULTY AFTERWARDS
DROP TABLE tblhd8a_audit;
CREATE TABLE tblhd8a_audit(
	Username VARCHAR2(100) NOT NULL,
	DateOfChange DATE NOT NULL,
	OldDifRateCode VARCHAR2(100) NULL,
	OldDifDesc VARCHAR2(100) NULL,
	NewDifRateCode VARCHAR2(100) NULL,
	NewDifDesc VARCHAR2(100) NULL,	
	TypeOfTransaction VARCHAR2(100) NOT NULL
	);

DROP TRIGGER taskhd8a;
CREATE OR REPLACE TRIGGER taskhd8a
	AFTER DELETE OR INSERT OR UPDATE
	ON tblDiff_Rate_Detail
	FOR EACH ROW
	BEGIN
		IF INSERTING THEN
			INSERT INTO tblhd8a_audit
				(Username, DateOfChange,NewDifRateCode,NewDifDesc,TypeOfTransaction)
				VALUES
				(USER, SYSDATE,:NEW.Dif_Rate_Code,:NEW.Dif_Description,'INSERT');
		
		ELSIF UPDATING THEN
			INSERT INTO tblhd8a_audit
				(Username, DateOfChange, OldDifRateCode, OldDifDesc,NewDifRateCode,NewDifDesc,TypeOfTransaction)
				VALUES 
				(USER, SYSDATE, :OLD.Dif_Rate_Code, :OLD.Dif_Description, :NEW.Dif_Rate_Code,:NEW.Dif_Description,'UPDATE');
		
		ELSIF DELETING THEN
			INSERT INTO tblhd8a_audit
				(Username, DateOfChange, OldDifRateCode, OldDifDesc,TypeOfTransaction)
				VALUES
				(USER, SYSDATE, :OLD.Dif_Rate_Code, :OLD.Dif_Description,'DELETE');
		END IF;
	END;

-- HD8b
DROP TRIGGER taskhd8b;
CREATE OR REPLACE TRIGGER taskhd8b
BEFORE INSERT ON tblDeparture_Date
FOR EACH ROW

DECLARE
	Max_Num_Of_Departure EXCEPTION;
	n number;

BEGIN
	SELECT COUNT(*) INTO n
		FROM tblDeparture_Date
		WHERE EXTRACT(MONTH FROM Departure_Date) = EXTRACT(MONTH FROM :NEW.Departure_Date)
		AND EXTRACT (YEAR FROM Departure_Date) = EXTRACT (YEAR FROM :New.Departure_Date)
		AND Hol_Code = :New.Hol_Code;
	IF (n > 3)THEN
		RAISE Max_Num_Of_Departure;
	END IF;
EXCEPTION
	WHEN Max_Num_Of_Departure THEN
		RAISE_APPLICATION_ERROR(-20000, 'Maxiumum Number of 4 depatures this month has been reached for Holiday Code ' || :NEW.Hol_Code);
END;