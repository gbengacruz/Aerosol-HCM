--------------------------------------------------------
--  Constraints for Table T_20_HM_JOB
--------------------------------------------------------

  ALTER TABLE "T_20_HM_JOB" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_20_HM_JOB" ADD CONSTRAINT "T_20_HM_JOB_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
