<%-- 
    Document   : du_signin
    Created on : 13 Jan, 2021, 11:42:02 AM
    Author     : JAVA-JP
--%>

<%@page import="Action.QRCodeExtract"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
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
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        String setvall;
        String status = null;
        final String filepath = "D:/Authentication/";
        MultipartRequest m = new MultipartRequest(request, filepath);
        String id = m.getParameter("id");
        String otp = m.getParameter("otp");
        File file = m.getFile("file");
        String path = file.toString();
        String filename = file.getName().toLowerCase();
        Connection con = SQLconnection.getconnection();
        Statement st = con.createStatement();
        Statement st1 = con.createStatement();
        Statement sto = con.createStatement();
        System.out.println("Check User OTP And ID : " + otp + " ," + id);
        System.out.println("Check path : " + path);

        QRCodeExtract qrread = new QRCodeExtract();
        qrread.QRCodeReader(path);
        setvall = QRCodeExtract.getvall;

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        String time = dateFormat.format(date);
        System.out.println("Date and Time : " + time);

        System.out.println("Check details : " + setvall);
        ResultSet rs = st.executeQuery("SELECT * FROM student_reg where otp='" + otp + "' AND id ='" + id + "' ");
        if (rs.next()) {
            ResultSet rs1 = sto.executeQuery("SELECT * FROM student_reg where details ='" + setvall + "' AND id ='" + id + "' ");
            if (rs1.next()) {
                String name = rs1.getString("name");
                String email = rs1.getString("email");
                String dept = rs1.getString("dept");
                String year = rs1.getString("year");
                int i = st1.executeUpdate("insert into attendance (sid, name, email, time , details, dept, year)values('" + id + "','" + name + "','" + email + "','" + time + "','" + setvall + "','" + dept + "','" + year + "')");
                response.sendRedirect("Student_Home.jsp?Success");
            } else {
                response.sendRedirect("Student_login.jsp?Msg=Incorrect_QR-code");

            }
        } else {
            response.sendRedirect("Student_login.jsp?Msg=Incorrect_OTP");

        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>