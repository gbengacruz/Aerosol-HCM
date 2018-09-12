--------------------------------------------------------
--  Constraints for Table T_99_SSU_PRIV
--------------------------------------------------------

  ALTER TABLE "HCM"."T_99_SSU_PRIV" ADD CONSTRAINT "T_99_SSU_PRIV_PK" PRIMARY KEY ("R_K")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
