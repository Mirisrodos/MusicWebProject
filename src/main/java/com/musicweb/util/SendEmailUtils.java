package com.musicweb.util;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import java.util.Properties;

public class SendEmailUtils {
    public static boolean sendEmail(String userMail, String subject ,String text) {
        final String username = "truongthuanhoa25@outlook.com.vn";
        final String password = "1231231";

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp-mail.outlook.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS

        Session session = Session.getInstance(prop,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });


        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("truongthuanhoa25@outlook.com.vn"));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(userMail)
            );
            message.setSubject(subject);
            message.setText(text);

            Transport.send(message);
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return false;
    }
}
