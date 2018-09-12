--------------------------------------------------------
--  Constraints for Table T_20_HM_UNT
--------------------------------------------------------

  ALTER TABLE "T_20_HM_UNT" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_20_HM_UNT" ADD CONSTRAINT "T_20_HM_UNT_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
