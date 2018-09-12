--------------------------------------------------------
--  Constraints for Table T_20_HM_BRCH
--------------------------------------------------------

  ALTER TABLE "T_20_HM_BRCH" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_20_HM_BRCH" ADD CONSTRAINT "T_20_HM_STP_PK" PRIMARY KEY ("R_K")
  USING INDEX (CREATE UNIQUE INDEX "T_20_HM_BRCH_PK" ON "T_20_HM_BRCH" ("R_K") 
  )  ENABLE;
