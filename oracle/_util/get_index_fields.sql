
-- Recupera campos de �ndices de uma tabela
SELECT TABLE_NAME, INDEX_NAME, COLUMN_POSITION, COLUMN_NAME
  FROM DBA_IND_COLUMNS
 WHERE TABLE_NAME = '&TAB'
 ORDER BY TABLE_NAME, INDEX_NAME, COLUMN_POSITION