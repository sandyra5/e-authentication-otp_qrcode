

<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="Networks.Mail"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mail = request.getParameter("email");
    String pass = request.getParameter("pass");
    String status = null;
    System.out.println("Check User name And Password : " + mail + pass);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement sto = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM student_reg where email='" + mail + "' AND password='" + pass + "' ");
        if (rs.next()) {

            session.setAttribute("uname", rs.getString("name"));
            session.setAttribute("umail", rs.getString("email"));
            session.setAttribute("uid", rs.getString("id"));
            Random RANDOM = new SecureRandom();
            int PASSWORD_LENGTH = 4;
            String letters = "0123456789";
            String otp = "";
            for (int i = 0; i < PASSWORD_LENGTH; i++) {
                int index = (int) (RANDOM.nextDouble() * letters.length());
                otp += letters.substring(index, index + 1);
            }
            String filekey = otp;
            int i = sto.executeUpdate("update student_reg set otp ='" + filekey + "' where email='" + mail + "' ");
            String msggg = "Your 4 digit OTP : " + filekey;
            Mail ma = new Mail();
            ma.secretMail(msggg, "OTP", mail);
            String msg = "OTP:" + msggg;
            response.sendRedirect("student_verify.jsp?Msg=otp");
        } else {
            response.sendRedirect("Student_login.jsp?Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>