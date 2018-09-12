--------------------------------------------------------
--  DDL for Procedure BODY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BODY" PKG_00_EML AS 

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
						 p_password      IN VARCHAR2 )




AS
    l_mail_conn   UTL_SMTP.connection;
    l_boundary    VARCHAR2(50) := sys_guid();--'----=*#abc1234321cba#*=';
    l_step        PLS_INTEGER  := 12000; -- make sure you set a multiple of 3 not higher than 24573
    l_user_name   VARCHAR2(50) := UTL_RAW.cast_to_varchar2 (UTL_ENCODE.base64_encode (UTL_RAW.cast_to_raw ('gbenga.bello@royalexchangeplc.com')));
    l_password     VARCHAR2(50) := UTL_RAW.cast_to_varchar2 (UTL_ENCODE.base64_encode (UTL_RAW.cast_to_raw ('password'))) ;
    l_auth        VARCHAR2(4000);

BEGIN
         l_user_name := UTL_RAW.cast_to_varchar2 (UTL_ENCODE.base64_encode (UTL_RAW.cast_to_raw (p_user_name)));
		 l_password  := UTL_RAW.cast_to_varchar2 (UTL_ENCODE.base64_encode (UTL_RAW.cast_to_raw (p_password))) ;
         l_mail_conn := UTL_SMTP.open_connection(p_smtp_host, p_smtp_port);

 --      UTL_SMTP.STARTTLS(l_mail_conn);

     --- Mail host and Authentication
         UTL_SMTP.helo(l_mail_conn, p_smtp_host);
         UTL_smtp.command( l_mail_conn, 'AUTH LOGIN');
         UTL_smtp.command( l_mail_conn, l_user_name);
         UTL_smtp.command( l_mail_conn, l_password); 

         UTL_SMTP.mail(l_mail_conn, p_from);
         UTL_SMTP.rcpt(l_mail_conn, p_to);

         UTL_SMTP.open_data(l_mail_conn); 



         UTL_SMTP.write_data(l_mail_conn, 'Date: ' || TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'To: ' || p_to || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'From: ' || p_from || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'Subject: ' || p_subject || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'Reply-To: ' || p_from || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'MIME-Version: 1.0' || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'Content-Type: multipart/related; boundary="' || l_boundary || '"' || UTL_TCP.crlf || UTL_TCP.crlf);

     --- Plain text/plain message
     IF p_text_msg IS NOT NULL THEN
         UTL_SMTP.write_data(l_mail_conn, '--' || l_boundary || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'Content-Type: text/plain; charset="iso-8859-1"' || UTL_TCP.crlf || UTL_TCP.crlf);

         UTL_SMTP.write_data(l_mail_conn, p_text_msg);
         UTL_SMTP.write_data(l_mail_conn, UTL_TCP.crlf || UTL_TCP.crlf);
     END IF;

    ---  text/html message
     IF p_html_msg IS NOT NULL THEN
         UTL_SMTP.write_data(l_mail_conn, '--' || l_boundary || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'Content-Type: text/html; charset="iso-8859-1"' || UTL_TCP.crlf || UTL_TCP.crlf);

         UTL_SMTP.write_data(l_mail_conn, p_html_msg);
         UTL_SMTP.write_data(l_mail_conn, UTL_TCP.crlf || UTL_TCP.crlf);
     END IF;

	---  Attachment
     IF p_attach_name IS NOT NULL THEN
         UTL_SMTP.write_data(l_mail_conn, '--' || l_boundary || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'Content-Type: ' || p_attach_mime || '; name="' || p_attach_name || '"' || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'Content-Transfer-Encoding: base64' || UTL_TCP.crlf);
         UTL_SMTP.write_data(l_mail_conn, 'Content-ID: <abc123>' || UTL_TCP.crlf);

         IF  p_attach_inline = 0 THEN
         UTL_SMTP.write_data(l_mail_conn, 'Content-Disposition: attachment; filename="' || p_attach_name || '"' || UTL_TCP.crlf || UTL_TCP.crlf);
		    ELSE
         UTL_SMTP.write_data(l_mail_conn, 'Content-Disposition: inline; filename="' || p_attach_name || '"' || UTL_TCP.crlf || UTL_TCP.crlf);
	     END IF;

         FOR i IN 0 .. TRUNC((DBMS_LOB.getlength(p_attach_blob) - 1 )/l_step) LOOP
         UTL_SMTP.write_data(l_mail_conn, UTL_RAW.cast_to_varchar2(UTL_ENCODE.base64_encode(DBMS_LOB.substr(p_attach_blob, l_step, i * l_step + 1))));
         END LOOP;

         UTL_SMTP.write_data(l_mail_conn, UTL_TCP.crlf || UTL_TCP.crlf);

     END IF;

         UTL_SMTP.write_data(l_mail_conn, '--' || l_boundary || '--' || UTL_TCP.crlf);
         UTL_SMTP.close_data(l_mail_conn);

         UTL_SMTP.quit(l_mail_conn);
END PRC_SMC_00_EML;

/
