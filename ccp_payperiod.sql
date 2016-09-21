DECLARE
  TEMP CLOB;
BEGIN
UPDATE SY05800M
    SET "DOMAIN" = 'CCP_PER_AREA6',
  "VIEW_DESC" = 'Pay Periods',
  "VIEW_SDESC" = null,
  "USER_ID" = null,
  "S_MODE" = 'S',
  "SELECTION" = '~L=0',
  "VIEW_TP" = null,
  "SORT" = null,
  "FILTER" = 'FROM [CFUSER]PA007M[PAYYR][CFLINK] P WHERE P.DEDUCTION_CODE=(SELECT MIN(M.DEDUCTION_CODE) ' || chr(13) || chr(10) || 'FROM [CFUSER]PA007M[PAYYR][CFLINK] M WHERE P.PAYROLL_TYPE = M.PAYROLL_TYPE AND P.PAYROLL_CYCLE = M.PAYROLL_CYCLE AND P.PAY_PERIOD = M.PAY_PERIOD)',
  "RESULT_FIELDS" = null,
  "CRITERIA_FIELDS" = null,
  "GROUP_FIELDS" = null,
  "AGGREGATE_FIELD" = null,
  "AGGREGATE_FUNCTION" = 'CT',
  "AGGREGATE_OVERRIDE" = null,
  "ASSOC_FIELDS" = null,
  "DRILLDOWN_SS" = null,
  "DRILLDOWN_SCHEMA" = null,
  "CHG_BY" = 'CCP',
  "CHG_DTM" = to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

INSERT INTO SY05800M
 ("ES", "VIEW_NM", "U_VERSION", "DOMAIN", "VIEW_DESC", "VIEW_SDESC", "USER_ID", "S_MODE", "VIEW_TP", 
  "SORT", "SELECTION", "FILTER", "RESULT_FIELDS", "CRITERIA_FIELDS", "GROUP_FIELDS", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "ASSOC_FIELDS", 
  "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT 
  'PER_MAIN', 'CCP_PAYPERIOD', '!', 'CCP_PER_AREA6', 'Pay Periods', 
  null, null, 'S', null, null, 
  '~L=0', 
  'FROM [CFUSER]PA007M[PAYYR][CFLINK] P WHERE P.DEDUCTION_CODE=(SELECT MIN(M.DEDUCTION_CODE) ' || chr(13) || chr(10) || 'FROM [CFUSER]PA007M[PAYYR][CFLINK] M WHERE P.PAYROLL_TYPE = M.PAYROLL_TYPE AND P.PAYROLL_CYCLE = M.PAYROLL_CYCLE AND P.PAY_PERIOD = M.PAY_PERIOD)', 
  null, null, null, null, 'CT', null, null, null, null, 
  'CCP', to_date('Oct-21-2015 16:18:19','Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05800M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD');

DELETE SY05801M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

DELETE SY05802M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

DELETE SY05804M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

DELETE SY05805M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

DELETE SY05806M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

DELETE SY05807M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

DELETE SY05808M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

DELETE SY05811M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

DELETE SY05812M
WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD';

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'PAYROLL_TYPE.PA007M', '!', 'Payroll Type', 
  null, 1, 1, 1, null, 'F', 'F', null, 'C', 'L', 
  4, 'string', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, 'string',
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'PAYROLL_TYPE.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'PAYROLL_CYCLE.PA007M', '!', 'Payroll Cycle', 
  null, 2, 2, 2, null, 'F', 'F', null, 'C', 'L', 
  4, 'string', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, 'string',
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'PAYROLL_CYCLE.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'PAY_PERIOD.PA007M', '!', 'Pay Period', 
  null, 3, 3, 3, null, 'F', 'F', null, 'N', 'R', 
  4, 'integer', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, 'integer',
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'PAY_PERIOD.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'PERIOD_START_DATE.PA007M', '!', 'Period Start Date', 
  1, 4, 4, 4, null, 'F', 'F', 'A', 'T', 'L', 
  12, 'date', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, 'date',
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'PERIOD_START_DATE.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'PERIOD_END_DATE.PA007M', '!', 'Period End Date', 
  null, 5, 5, 5, null, 'F', 'F', null, 'T', 'L', 
  12, 'date', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, 'date',
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'PERIOD_END_DATE.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'CHQ_DATE.PA007M', '!', 'Check Date', 
  null, 6, 6, 6, null, 'F', 'F', null, 'T', 'L', 
  12, 'date', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, 'date',
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'CHQ_DATE.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'PROCESSED', '!', 'Processed', 
  null, 7, 7, 7, null, 'F', 'F', null, 'C', 'L', 
  6, 'string', null, null, null, null, null, null, 
  null, null, null, null, null, '(CASE WHEN (0 < (SELECT COUNT(*) FROM [CFUSER]PA107T[PAYYR][CFLINK] C WHERE CHQ_TYPE = ' || chr(39) || 'R' || chr(39) || ' AND P.PAYROLL_TYPE = C.PAYROLL_TYPE AND P.PAYROLL_CYCLE = C.PAYROLL_CYCLE AND P.PAY_PERIOD = C.PAY_PERIOD)) THEN ' || chr(39) || 'YES' || chr(39) || ' ELSE ' || chr(39) || 'NO' || chr(39) || ' END)', null, null, null, 'string',
  'CCP', to_date('Oct-21-2015 16:18:19','Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'PROCESSED');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'AUTO_EARN_DATE.PA007M', '!', 'Auto Earn Date', 
  null, null, null, null, null, 'F', 'F', null, 'T', 'L', 
  7, 'date', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, null,
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'AUTO_EARN_DATE.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'AUTO_EARN_TIME.PA007M', '!', 'Auto Earn Time', 
  null, null, null, null, null, 'F', 'F', null, 'N', 'R', 
  4, 'integer', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, null,
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'AUTO_EARN_TIME.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'CCP_VERSION', '!', 'DO NOT CHANGE', 
  null, null, null, null, null, 'F', 'F', null, 'C', 'L', 
  5, 'string', null, null, null, null, null, null, 
  null, null, null, null, null, '1.4.1', null, null, null, null,
  'CCP', to_date('Oct-21-2015 16:18:19','Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'CCP_VERSION');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'DEDUCTION_CODE.PA007M', '!', 'Deduction Code', 
  null, null, null, null, null, 'F', 'F', null, 'N', 'R', 
  3, 'integer', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, null,
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'DEDUCTION_CODE.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'DEDUCTION_MULT.PA007M', '!', 'Deduction Mult', 
  null, null, null, null, null, 'F', 'F', null, 'N', 'R', 
  3.2, 'decimal', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, null,
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'DEDUCTION_MULT.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'FILLER.PA007M', '!', 'Filler', 
  null, null, null, null, null, 'F', 'F', null, 'C', 'L', 
  184, 'string', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, null,
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'FILLER.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'SERVICE_PERIOD.PA007M', '!', 'Service Period', 
  null, null, null, null, null, 'F', 'F', null, 'C', 'L', 
  7, 'string', null, null, null, null, null, null, 
  null, null, null, null, null, null, null, null, null, null,
  'CCP', to_date(null,'Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'SERVICE_PERIOD.PA007M');

INSERT INTO SY05801M
 ("ES", "VIEW_NM", "DOMAIN_FIELD", "U_VERSION", "FIELD_LABEL", "SORT_SEQ", "LIST_SEQ", "FILTER_SEQ", "RECORD_SEQ", 
  "GROUP_SEQ", "SUM_YN", "GROUP_YN", "SORT_DIR", "COLUMN_TP", "ALIGN", "LENGTH", "DATA_TP", "FIELD_FORMAT", "BG_COLOR", 
  "FG_COLOR", "DRILLDOWN_SS", "DRILLDOWN_SCHEMA", "LOOKUP", "DEFAULT_VALUE", "TARGET_FIELD", "URL_PARAMETER", 
  "AGGREGATE_FIELD", "AGGREGATE_FUNCTION", "AGGREGATE_OVERRIDE", "OBJECT_CD", "CONTROL_CD", "CASE_TP", "SEARCH_TP", 
  "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', 'STATUS', '!', 'Period End', 
  null, 8, null, null, null, 'F', 'F', null, 'C', 'L', 
  null, 'string', null, null, null, null, null, null, 
  null, null, null, null, null, '(CASE WHEN (0 < (SELECT COUNT(*) FROM [CFUSER]PA106T[PAYYR][CFLINK] C WHERE P.PAYROLL_TYPE = C.PAYROLL_TYPE AND P.PAYROLL_CYCLE = C.PAYROLL_CYCLE AND P.PAY_PERIOD = C.PAY_PERIOD)) THEN ' || chr(39) || 'YES' || chr(39) || ' ELSE ' || chr(39) || 'NO' || chr(39) || ' END)', null, null, null, 'string',
  'CCP', to_date('Oct-21-2015 16:18:19','Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Sep-20-2016 17:19:55','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05801M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD' 
  AND "DOMAIN_FIELD" = 'STATUS');

INSERT INTO SY05808M
 ("ES", "VIEW_NM", "U_VERSION", "CATEGORY_CD", "DB_PATH", "VOID_YN", 
  "VIEW_CMTS", "ADD_BY", "ADD_DTM", "CHG_BY", "CHG_DTM")
SELECT
  'PER_MAIN', 'CCP_PAYPERIOD', '!', null, null, 'F', 'Cayenta Core Portal Statistic', 
  'CCP', to_date('Oct-21-2015 16:18:21','Mon-DD-YYYY HH24:MI:SS'), 
  'CCP', to_date('Oct-29-2015 00:03:20','Mon-DD-YYYY HH24:MI:SS')
FROM DUAL WHERE NOT EXISTS 
(SELECT 1 FROM SY05808M WHERE "ES" = 'PER_MAIN' 
  AND "VIEW_NM" = 'CCP_PAYPERIOD');

UPDATE SY07500M SET COUNTER_NO = (SELECT MAX(COUNTER) + 1 FROM SG51110C) 
 WHERE COUNTER_KEY = 'SG51110C';

COMMIT;
END;
/
