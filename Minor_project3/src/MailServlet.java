

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import conn.Myconn;

@WebServlet("/MailServlet")
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email="";
    	String name="";
    	String to="";
    	String firstname="";
    	String lastname="";
    	String lname="";
		
		HttpSession session=request.getSession(false);
    	  	
    	if(session!=null)
    	{
    		to=(String)session.getAttribute("emailPre");
    		firstname=(String)session.getAttribute("firstname");
    		lastname=(String)session.getAttribute("lastname");
    		name=firstname+" "+lastname;
    		
    	}
    	
		
    	
		
		
    	Date time=new Date();
    	  SimpleDateFormat sdf= new SimpleDateFormat("HH:mm:ss aa");
    	  String sd=sdf.format(time);
    	  
    	  long millis=System.currentTimeMillis();  
  		java.sql.Date d=new java.sql.Date(millis); 
    	 
	
		 String from="--enter your email id--";
		 String password="--enter password--";
		 
		 String sub="Message";
		 String msg1="Hello "+name +" thank you for ussing our server. ";
		 String msg3="your booking has been taken at "+sd+" on"+d+".";
		 String msg2=" Once your booking will be confirm, we will notify you. Thank you for be with @Gagency.com";
		 String msg=msg1+msg3+msg2;		 
		 
         //Get properties object    
         Properties props = new Properties();    
         props.put("mail.smtp.host", "smtp.gmail.com");    
         props.put("mail.smtp.socketFactory.port", "465");    
         props.put("mail.smtp.socketFactory.class",    
                   "javax.net.ssl.SSLSocketFactory");    
         props.put("mail.smtp.auth", "true");    
         props.put("mail.smtp.port", "465");    
         //get Session   
         Session session1 = Session.getDefaultInstance(props,    
          new javax.mail.Authenticator() {    
          protected PasswordAuthentication getPasswordAuthentication() {    
          return new PasswordAuthentication(from,password);  
          }   
         });    
         //compose message    
         try {    
          MimeMessage message = new MimeMessage(session1);    
          message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
          message.setSubject(sub);    
          message.setText(msg);    
          //send message  
          Transport.send(message);    
          System.out.println("message sent successfully");    
         } catch (MessagingException e) {throw new RuntimeException(e);}  
		
		
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
         response.sendRedirect("confirmPage.jsp");
	}

	
}
