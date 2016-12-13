package com.jabh.mail;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jabh.model.SignUp;
import com.utils.logging.Logger;

public class SendMailSSL {
	private static final String CLASS_NAME = SendMailSSL.class.getName();
	private static Properties appPropery = (Properties) new ClassPathXmlApplicationContext("dispatcher-servlet.xml").getBean("appProperties");
	public static boolean sendMail(SignUp signUp) throws Exception {
		try {
			Logger.logStatus(CLASS_NAME,"Entering into sendMail","debug");
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");

			Session session = Session.getDefaultInstance(props,
					new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("ramesh.kv1989","nirmalakK1#");
				}
			});
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("ramesh.kv1989@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(signUp.getEmail()));
			message.setRecipients(Message.RecipientType.CC,InternetAddress.parse("ramesh.kv1989@gmail.com"));
			message.setSubject("J&A Business Hunter - Login Credentials");
			message.setText("Greetings "+signUp.getName()
					+ "\n\nThank You for choosing J&A Business Hunter!. Please verify your e-mail address to complete the registration." +
					"\nYour J&A Business Hunter account User Name is:  : "+signUp.getEmail() +
					"\n\n" +appPropery.getProperty("activation_URL")+signUp.getEmail()+
					"\n\n\nThank you," +
					"\nTeam J&A Business Hunter");

			Transport.send(message);

			Logger.logStatus(CLASS_NAME,"Message sent Successfully to EmailID : "+signUp.getEmail(),"debug");
			Logger.logStatus(CLASS_NAME,"Exiting into sendMail","debug");
			return true;

		} catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in sendMail : "+e.fillInStackTrace(), "error");
			throw e;
		}
	}
	
	public static boolean sendResetMail(SignUp signUp) throws Exception {
		try {
			Logger.logStatus(CLASS_NAME,"Entering into sendResetMail","debug");
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");

			Session session = Session.getDefaultInstance(props,
					new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("ramesh.kv1989","nirmalakK1#");
				}
			});
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("ramesh.kv1989@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(signUp.getEmail()));
			message.setRecipients(Message.RecipientType.CC,InternetAddress.parse("ramesh.kv1989@gmail.com"));
			message.setSubject("J&A Business Hunter - Reset Password");
			message.setText("Greetings "+signUp.getName()
					+ "\n\nThank You for choosing J&A Business Hunter!. Please click on below link to reset you password." +
					"\n\n" +appPropery.getProperty("reset_URL")+signUp.getEmail()+
					"\n\n\nThank you," +
					"\nTeam J&A Business Hunter");

			Transport.send(message);

			Logger.logStatus(CLASS_NAME,"Message sent Successfully to EmailID : "+signUp.getEmail(),"debug");
			Logger.logStatus(CLASS_NAME,"Exiting into sendResetMail","debug");
			return true;

		} catch (Exception e) {
			Logger.logStatus(CLASS_NAME,"Exception in sendResetMail : "+e.fillInStackTrace(), "error");
			throw e;
		}
	}
}