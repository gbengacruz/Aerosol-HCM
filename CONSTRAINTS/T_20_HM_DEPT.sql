--------------------------------------------------------
--  Constraints for Table T_20_HM_DEPT
--------------------------------------------------------

  ALTER TABLE "T_20_HM_DEPT" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_20_HM_DEPT" ADD CONSTRAINT "T_20_HM_DEPT_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
