--------------------------------------------------------
--  Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "EMP" MODIFY ("EMPNO" NOT NULL ENABLE);
  ALTER TABLE "EMP" ADD PRIMARY KEY ("EMPNO")
  USING INDEX  ENABLE;
