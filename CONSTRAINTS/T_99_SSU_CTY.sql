--------------------------------------------------------
--  Constraints for Table T_99_SSU_CTY
--------------------------------------------------------

  ALTER TABLE "T_99_SSU_CTY" MODIFY ("CTY_CD" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_CTY" MODIFY ("CTY_NM" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_CTY" ADD PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
