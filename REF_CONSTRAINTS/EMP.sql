--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "HCM"."EMP" ADD FOREIGN KEY ("MGR")
	  REFERENCES "HCM"."EMP" ("EMPNO") ENABLE;
  ALTER TABLE "HCM"."EMP" ADD FOREIGN KEY ("DEPTNO")
	  REFERENCES "HCM"."DEPT" ("DEPTNO") ENABLE;
