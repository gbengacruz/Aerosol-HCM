--------------------------------------------------------
--  Constraints for Table T_20_HM_EMP
--------------------------------------------------------

  ALTER TABLE "T_20_HM_EMP" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_20_HM_EMP" ADD CONSTRAINT "T_20_HM_EMP_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
