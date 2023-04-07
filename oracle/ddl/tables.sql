CREATE TABLE ESSBASE_VARIABLE ( 
  ESS_APPLICATION VARCHAR2(8), 
  ESS_DATABASE VARCHAR2(8), 
  ESS_VARIABLE VARCHAR2(80), 
  ESS_VALUE VARCHAR2(80) 
); 

ALTER TABLE ESSBASE_VARIABLE ADD CONSTRAINT ESS_VAR_UQ01 UNIQUE (ESS_APPLICATION, ESS_DATABASE, ESS_VARIABLE);