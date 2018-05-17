package servlets;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;


public class sendMail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String m_name =		request.getParameter("name");
        String m_email =	request.getParameter("email");
        String m_title =	request.getParameter("title");
        String m_text =		request.getParameter("text");

        try{
            String mail_from =	m_name + "<" + m_email + ">";
            String mail_to =	"Dongho Choi<choid6180@gmail.com>";
            String title =		"테스트 이메일입니다. :: " + m_title;
            String contents =	"보낸 사람 :: " + m_name + "&lt;" + m_email + "&gt;<br><br>" + m_title + "<br><br>" + m_text;

            Properties props = new Properties();
            props.put("mail.transport.protocol", "smtp");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "465");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.socketFactory.fallback", "false");
            props.put("mail.smtp.auth", "true");

            Authenticator auth = new SMTPAuthenticatior();

            Session sess = Session.getDefaultInstance(props, auth);

            MimeMessage msg = new MimeMessage(sess);

            msg.setFrom(new InternetAddress(mail_from));
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail_to));
            msg.setSubject(title, "UTF-8");
            msg.setContent(contents, "text/html; charset=UTF-8");
            msg.setHeader("Content-type", "text/html; charset=UTF-8");

            Transport.send(msg);

            response.sendRedirect("/home");

        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
