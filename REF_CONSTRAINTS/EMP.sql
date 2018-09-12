--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "EMP" ADD FOREIGN KEY ("MGR")
	  REFERENCES "EMP" ("EMPNO") ENABLE;
  ALTER TABLE "EMP" ADD FOREIGN KEY ("DEPTNO")
	  REFERENCES "DEPT" ("DEPTNO") ENABLE;
