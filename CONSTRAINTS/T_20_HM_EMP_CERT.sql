--------------------------------------------------------
--  Constraints for Table T_20_HM_EMP_CERT
--------------------------------------------------------

  ALTER TABLE "T_20_HM_EMP_CERT" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_20_HM_EMP_CERT" ADD CONSTRAINT "T_20_HM_EMP_CERT_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
