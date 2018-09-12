--------------------------------------------------------
--  DDL for Procedure SPECIFICATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SPECIFICATION" PKG_00_EML AS 

-- Name         : PKG_00_EML
-- Author       : Gbenga Cruz
-- Description  : Mail package, send email with attachments	/ embedded image	




-- Send mail
PROCEDURE PRC_SMC_00_EML(p_to            IN VARCHAR2,
                         p_from          IN VARCHAR2,
                         p_subject       IN VARCHAR2,
                         p_text_msg      IN VARCHAR2 DEFAULT NULL,
                         p_html_msg      IN CLOB DEFAULT NULL,
                         p_attach_name   IN VARCHAR2 DEFAULT NULL,
                         p_attach_mime   IN VARCHAR2 DEFAULT NULL,
                         p_attach_blob   IN BLOB DEFAULT NULL,
                         p_smtp_host     IN VARCHAR2,
                         p_smtp_port     IN NUMBER DEFAULT 25,
				         p_attach_inline IN NUMBER DEFAULT 0,
						 p_content_id    IN VARCHAR2,
					     p_user_name     IN VARCHAR2,
						 p_password      IN VARCHAR2 );

END PKG_00_EML;

/
