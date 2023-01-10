-- CURRENT_TIMESTAMP
SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_TIMESTAMP AS datetime;

-- CURRENT_TIMEZONE
SELECT CURRENT_TIMEZONE();
SELECT CURRENT_TIMEZONE() AS timezone;

-- CURRENT_TIMEZONE_ID
SELECT CURRENT_TIMEZONE_ID();
SELECT CURRENT_TIMEZONE_ID() AS timezone_id;

-- DATE_BUCKET
DECLARE @date DATETIME2 = '2020-04-15 21:22:11';
SELECT DATE_BUCKET(WEEK, 1, @date);

DECLARE @date DATETIME2 = '2020-06-15 21:22:11';
DECLARE @origin DATETIME2 = '2019-01-01 00:00:00';
SELECT DATE_BUCKET(WEEK, 5, @date, @origin);

-- DATE_ADD
SELECT DATEADD(month, 1, '20060830');
SELECT DATEADD(month, 1, '2006-08-31');

-- DATE_DIFF
DECLARE @startdate DATETIME2 = '2007-05-05 12:10:09.3312722';
DECLARE @enddate   DATETIME2 = '2007-05-04 12:10:09.3312722';
SELECT DATEDIFF(day, @startdate, @enddate);
SELECT DATEDIFF(millisecond, GETDATE(), SYSDATETIME());

SELECT DATEDIFF(year,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(quarter,     '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(month,       '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(dayofyear,   '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(day,         '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(week,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(hour,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(minute,      '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(second,      '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(millisecond, '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(microsecond, '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');

-- DATEDIFF_BIG
DECLARE @startDate DATETIME2 = '2007-05-06 12:10:09';
DECLARE @endDate   DATETIME2 = '2007-05-07 12:10:09';
SELECT DATEDIFF_BIG(day, @startDate, @endDate);

SELECT DATEDIFF_BIG(year,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(quarter,     '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(month,       '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(dayofyear,   '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(day,         '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(week,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(hour,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(minute,      '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(second,      '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF_BIG(millisecond, '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');

-- DATEFROMPARTS
DECLARE @dateformatsYear   INT = 2010;
DECLARE @dateformatsMonth  INT = 12;
DECLARE @dateformatsDay    INT = 31;
SELECT DATEFROMPARTS (2010, 12, 31);
SELECT DATEFROMPARTS (@dateformatsYear, @dateformatsMonth, @dateformatsDay);

-- DATENAME
SELECT DATENAME(year, '12:10:30.123'),
       DATENAME(month, '12:10:30.123'),
       DATENAME(day, '12:10:30.123'),
       DATENAME(dayofyear, '12:10:30.123'),
       DATENAME(weekday, '12:10:30.123');
DECLARE @t time = '12:10:30.123';
SELECT DATENAME(year, @t);

-- DATEPART
SELECT DATEPART (tzoffset, '2007-05-10  00:00:01.1234567 +05:10');
SELECT DATEPART(year, '12:10:30.123'),
       DATEPART(month, '12:10:30.123'),
       DATEPART(day, '12:10:30.123'),
       DATEPART(dayofyear, '12:10:30.123'),
       DATEPART(weekday, '12:10:30.123');
SELECT DATEPART(millisecond, '00:00:01.1234567');
SELECT DATEPART(microsecond, '00:00:01.1234567');
SELECT DATEPART(nanosecond,  '00:00:01.1234567');

DECLARE @t time = '12:10:30.123';
SELECT DATEPART(year, @t);

SELECT DATEPART(year, 0), DATEPART(month, 0), DATEPART(day, 0);

-- DATETIME2FROMPARTS
SELECT DATETIME2FROMPARTS (2010, 12, 31, 23, 59, 59, 0, 0);
SELECT DATETIME2FROMPARTS (2011, 8, 15, 14, 23, 44, 5, 1);
SELECT DATETIME2FROMPARTS (2011, 8, 15, 14, 23, 44, 50, 2);
SELECT DATETIME2FROMPARTS (2011, 8, 15, 14, 23, 44, 500, 3);

-- DATETIMEFROMPARTS
SELECT DATETIMEFROMPARTS (2010, 12, 31, 23, 59, 59, 0);

-- DATETIMEOFFSETFROMPARTS
SELECT DATETIMEOFFSETFROMPARTS (2010, 12, 31, 14, 23, 23, 0, 12, 0, 7);
SELECT DATETIMEOFFSETFROMPARTS (2011, 8, 15, 14, 30, 00, 5, 12, 30, 1);
SELECT DATETIMEOFFSETFROMPARTS (2011, 8, 15, 14, 30, 00, 50, 12, 30, 2);
SELECT DATETIMEOFFSETFROMPARTS (2011, 8, 15, 14, 30, 00, 500, 12, 30, 3);

-- DATETRUNC
DECLARE @d datetime2 = '2021-12-08 11:30:15.1234567';
SELECT 'Year', DATETRUNC(year, @d);
SELECT 'Quarter', DATETRUNC(quarter, @d);
SELECT 'Month', DATETRUNC(month, @d);
SELECT 'Week', DATETRUNC(week, @d);
SELECT 'Iso_week', DATETRUNC(iso_week, @d);
SELECT 'DayOfYear', DATETRUNC(dayofyear, @d);
SELECT 'Day', DATETRUNC(day, @d);
SELECT 'Hour', DATETRUNC(hour, @d);
SELECT 'Minute', DATETRUNC(minute, @d);
SELECT 'Second', DATETRUNC(second, @d);
SELECT 'Millisecond', DATETRUNC(millisecond, @d);
SELECT 'Microsecond', DATETRUNC(microsecond, @d);

-- DAY
SELECT DAY('2015-04-30 01:01:01.1234567');

-- EOMONTH
DECLARE @date DATETIME = '12/1/2011';
SELECT EOMONTH (@date);
SELECT EOMONTH (@date) AS 'This Month';
SELECT EOMONTH (@date, 1) AS 'Next Month';
SELECT EOMONTH (@date, -1) AS 'Last Month';

-- GETDATE
SELECT GETDATE();
SELECT GETDATE() AS curr_date;

-- GETUTCDATE
SELECT GETUTCDATE();
SELECT GETUTCDATE() AS curr_utc_date;

-- ISDATE
SELECT ISDATE('04/15/2008');
SELECT ISDATE('15/04/2008');

-- MONTH
SELECT MONTH('2007-04-30T01:01:01.1234567 -07:00');

-- SMALLDATETIMEFROMPARTS
SELECT SMALLDATETIMEFROMPARTS (2010, 12, 31, 23, 59);

-- SWITCHOFFSET
SELECT SWITCHOFFSET ('1998-09-20 7:45:50.71345 -5:00', '-08:00');

-- SYSDATETIME
SELECT SYSDATETIME();
SELECT SYSDATETIME() AS sys_date;

-- SYSDATETIMEOFFSET
SELECT SYSDATETIMEOFFSET();
SELECT SYSDATETIMEOFFSET() AS sys_date_offset;

-- SYSUTCDATETIME
SELECT SYSUTCDATETIME();
SELECT SYSUTCDATETIME() AS sys_utc_datetime;

-- TIMEFROMPARTS
SELECT TIMEFROMPARTS (23, 59, 59, 0, 0);
SELECT TIMEFROMPARTS (14, 23, 44, 5, 1);
SELECT TIMEFROMPARTS (14, 23, 44, 50, 2);
SELECT TIMEFROMPARTS (14, 23, 44, 500, 3);

-- TODATETIMEOFFSET
DECLARE @todaysDateTime DATETIME2 = '2015-04-30 01:01:01.1234567'
SELECT TODATETIMEOFFSET (@todaysDateTime, '-07:00');
SELECT TODATETIMEOFFSET(@todaysDateTime, -120);
SELECT TODATETIMEOFFSET(@todaysDateTime, '+13:00');

-- YEAR
SELECT YEAR('2010-04-30T01:01:01.1234567-07:00');