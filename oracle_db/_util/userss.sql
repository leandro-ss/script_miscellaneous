PROMPT
PROMPT ==> FUN��O: EXIBE INFORMA��ES SOBRE OS USU�RIOS COM STATUS SNIPED
PROMPT ==> DESENVOLVIDO POR CLEBER R. MARQUES
PROMPT ==> MSN: cleber_rmarques@hotmail.com
PROMPT
SELECT 
	OSUSER, 
	USERNAME, 
	SID, 
	SERIAL#, 
	STATUS, 
	SERVER, 
	MACHINE, 
	PROGRAM, 
	TO_CHAR(LOGON_TIME,'DD/MM/YYYY HH24:MI:SS') LOGON,
	LAST_CALL_ET
FROM   
	V$SESSION
WHERE  
	USERNAME 	!= 'UNKNOWN'
	AND TYPE 	!= 'BACKGROUND'
	AND STATUS   	= 'SNIPED'
ORDER  BY 
	1
/