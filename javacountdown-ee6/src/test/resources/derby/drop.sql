CREATE PROCEDURE DROP_TABLE_IF_EXISTS(IN schemaName varchar(128), IN tableName varchar(128)) PARAMETER STYLE JAVA MODIFIES SQL DATA LANGUAGE JAVA EXTERNAL NAME 'derby.DerbyDropIfExists.dropTable'
CREATE PROCEDURE DROP_SEQ_IF_EXISTS(IN schemaName varchar(128), IN sequenceName varchar(128)) PARAMETER STYLE JAVA MODIFIES SQL DATA LANGUAGE JAVA EXTERNAL NAME 'derby.DerbyDropIfExists.dropSequence'
CALL DROP_SEQ_IF_EXISTS('app', 'Visit_SEQ')
CALL DROP_TABLE_IF_EXISTS('app', 'GEONAMES')
CALL DROP_TABLE_IF_EXISTS('app', 'VISIT')
DROP PROCEDURE DROP_TABLE_IF_EXISTS
DROP PROCEDURE DROP_SEQ_IF_EXISTS