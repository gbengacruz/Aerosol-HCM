--------------------------------------------------------
--  Constraints for Table T_20_HM_EMP_MRT_STA
--------------------------------------------------------

  ALTER TABLE "T_20_HM_EMP_MRT_STA" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_20_HM_EMP_MRT_STA" ADD CONSTRAINT "T_20_HM_EMP_MRT_STA_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
