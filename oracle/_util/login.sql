--* File Name    : Login.sql
--* Author       : DR Timothy S Hall
--* Description  : Set the SQL Prompt to the current Username:Service.
--* Requirements : Access to the V$ views.
--* Call Syntax  : @Login
--* Last Modified: 15/07/2000
SET FEEDBACK OFF
SET TERMOUT OFF

VARIABLE v_database  VARCHAR2(10)
VARIABLE v_osuser    VARCHAR2(30)

BEGIN
  SELECT Upper(instance_name)
  INTO   :v_database
  FROM   v$instance;

  select upper(osuser)
  into   :v_osuser
  from v$session 
  where sid = (select distinct(sid) from v$mystat);
  
END;
/

SPOOL temp.sql


SELECT 'SET SQLPROMPT "' ||:v_osuser||' - '|| Upper(User) || ' in ' || :v_database || '> "'
FROM   dual;
SPOOL OFF

@temp

SET TERMOUT 		ON
SET FEEDBACK 		ON
SET TIMING		ON
SET LINES 		999
SET PAGES 		999
SET LONG 		10000

COL GRANTEE      	FORMAT A10
COL SEGMENT_NAME 	FORMAT A30
COL OWNER        	FORMAT A30
COL FILE_NAME    	FORMAT A40
COL OBJECT_NAME  	FORMAT A40
COL INTERVAL     	FORMAT A40
COL SQL_TEXT 		FORMAT A100
COL MACHINE 		FORMAT A20
COL MCH_CODE 		FORMAT A20
COL STATE		FORMAT A12
COL ORG_CODE 		FORMAT A12
COL ERR_DESCR_LO 	FORMAT A80
COL COLUMN_NAME 	FORMAT A30
COL PCT_BUFGETS 	FORMAT A15
COL ADDRESS 		FORMAT A20
COL GRANTEE		FORMAT A30
COL OSUSER		FORMAT A25
COL PROGRAM 		FORMAT A80
COL USERNAME		FORMAT A30
COL TABLESPACE_NAME 	FORMAT A30
COL ARQUIVO		FORMAT A50
COL GLOBAL_NAME   	FORMAT A15
COL INSTANCE_NAME 	FORMAT A15
COL USER          	FORMAT A15
COL HOST_NAME     	FORMAT A10
COL OWNER    		FORMAT A10
COL DB_LINK  		FORMAT A20
COL USERNAME 		FORMAT A30
COL HOST     		FORMAT A15
COL LOG_USER 		FORMAT A10
COL WHAT     		FORMAT A60
COL NEXT     		FORMAT A20
COL LAST     		FORMAT A20
COL AGORA    		FORMAT A20
COL OPNAME 		FORMAT A20
COL START 		FORMAT A20
COL MEMBER 		FORMAT A50
COL NAME 		FORMAT A60
COL COMP_NAME		FORMAT A40
COL TABLESPACE		FORMAT A30
COL NOMEKATAKANA	FORMAT A30
COL NOMEKANJI		FORMAT A30
COL POSTALCODE 		FORMAT A30
COL CITY 		FORMAT A30
COL CITYKANJI 		FORMAT A30
COL PROVINCE 		FORMAT A30
COL PROVINCEKANJI 	FORMAT A30
COL TOWN 		FORMAT A30
COL TOWNKANJI 		FORMAT A30
COL NOME 		FORMAT A30
COL CONTATOBRASIL 	FORMAT A30
COL TELCONTATOBRASIL 	FORMAT A30
COL ENDERECOCONTATOBRASIL FORMAT A30
COL STRPERNAMEUNCSPELL 	FORMAT A30
COL STRADRTOWN 		FORMAT A40
COL STRADRCOMPLEMENT 	FORMAT A40
COL STRADRSTATE 	FORMAT A30
COL STRADRSTREET 	FORMAT A30
COL STRADRCITY 		FORMAT A30
col STRPERNAME 		FORMAT A30
COL STREMCNAME 		FORMAT A30
COL STRSTANAMEUNICODE 	FORMAT A20
COL STRCITNAMEUNICODE 	FORMAT A20
COL STRTOWNAMEUNICODE 	FORMAT A20
COL STRSTANAME 		FORMAT A20
COL STRCITNAME 		FORMAT A30
COL STRTOWNAME 		FORMAT A20
COL STRTOWSUBREGION 	FORMAT A20
COL PROVINCEKANJI 	FORMAT A20
COL PROVINCE	 	FORMAT A20
COL CITYKANJI	 	FORMAT A20
COL CITY	 	FORMAT A20
COL TOWN	 	FORMAT A20
COL TOWNKANJI	 	FORMAT A20
COL PLAN_PLUS_EXP	FORMAT A150