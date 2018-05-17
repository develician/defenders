package servlets;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticatior extends Authenticator{

    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("dj_hanuel","ehdgh!806");
    }
}


