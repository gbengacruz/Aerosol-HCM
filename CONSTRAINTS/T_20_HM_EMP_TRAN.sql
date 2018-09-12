--------------------------------------------------------
--  Constraints for Table T_20_HM_EMP_TRAN
--------------------------------------------------------

  ALTER TABLE "T_20_HM_EMP_TRAN" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_20_HM_EMP_TRAN" ADD CONSTRAINT "T_20_HM_EMP_TRAN_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
