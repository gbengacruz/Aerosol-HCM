--------------------------------------------------------
--  DDL for Trigger TR_99_SSU_SUB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HCM"."TR_99_SSU_SUB" 
   BEFORE INSERT OR UPDATE ON t_99_ssu_sub
   FOR EACH ROW 
 BEGIN 
   IF :new.r_k IS NULL THEN 
    -- SELECT to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') INTO :new.r_k FROM dual; 
    SELECT s_99_ssu_sub.NEXTVAL INTO :new.r_k FROM dual; 
   END IF; 
   IF inserting THEN 
       :new.crt_dt := localtimestamp; 
       :new.crt_by := nvl(wwv_flow.g_user,user); 
       :new.upd_dt := localtimestamp; 
       :new.upd_by := nvl(wwv_flow.g_user,user); 
      END IF; 
    IF inserting OR updating THEN 
       :new.upd_dt := localtimestamp; 
       :new.upd_by := nvl(wwv_flow.g_user,user); 
    END IF; 

 END TR_99_SSU_SUB;


/
ALTER TRIGGER "HCM"."TR_99_SSU_SUB" ENABLE;
