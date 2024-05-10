<%-- 
    Document   : index
    Created on : 19 May, 2021, 10:44:56 AM
    Author     : JAVA-JP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <!-- Title Tag -->
        <title>E Authentication Using QR-Code</title>
        <!-- <<Mobile Viewport Code>> -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- <<Attched Stylesheets>> -->
        <link rel="stylesheet" href="css/theme.css" type="text/css" />
        <link rel="stylesheet" href="css/media.css" type="text/css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,600italic,400italic,800,700' rel='stylesheet' type='text/css'>    
        <link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>

    </head>
    <style>

        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            font-size: 20px;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 2px solid black;
            align:"center";  cellpadding:"0"; cellspacing:"2";
            padding: 15px;
            color: black;
        }


        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #3399ff;
            color: white;
        }
    </style>
    <body>
        <!-- \\ Begin Holder \\ -->
        <div class="DesignHolder">
            <!-- \\ Begin Frame \\ -->
            <div class="LayoutFrame">
                <!-- \\ Begin Header \\ -->
                <header>
                    <div class="Center">
                        <div class="site-logo">
                        </div>
                        <div id="mobile_sec">
                            <div class="mobile"><i class="fa fa-bars"></i><i class="fa fa-times"></i></div>
                            <div class="menumobile">
                                <!-- \\ Begin Navigation \\ -->
                                <nav class="Navigation">
                                    <ul>
                                        <li>                                
                                            <a href="Staff_Home.jsp">Home</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li>
                                            <a href="student_details.jsp">Students</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li class="active">
                                            <a href="attendance_details.jsp">Attendance</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li>
                                            <a href="index.jsp">Logout</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                    </ul>
                                </nav>
                                <!-- // End Navigation // -->
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </header>
                <!-- // End Header // -->
                <!-- \\ Begin Banner Section \\ -->
                <div class="Banner_sec" id="home">
                    <!--  \\ Begin banner Side -->
                    <div class="bannerside">
                        <div class="ce">
                            <br>
                            <center><h1 style="color: white;font-weight: 600">AuthLock</h1></center>
                        </div>                        								
                        <!--  // End Left Side // -->
                        <!--  // End Right Side // -->
                    </div>
                    <!--  // End banner Side // -->
                    <div class="clear"></div>
                </div>
                <!-- // End Banner Section // -->
                <!-- \\ Begin Container \\ -->
                <div id="Container">
                    <!-- \\ Begin About Section \\ -->
                    <div class="About_sec" id="about">
                        <div class="Center">            	
                            <h2>Attendance Details</h2>   
                            <div class="Line"></div>	         
                            <br><br><br>
                            <table id="customers">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Department</th>
                                    <th>Year</th>
                                    <th>Attendance Time</th>
                                </tr>
                                <%
                                    Connection con = SQLconnection.getconnection();
                                    Statement st = con.createStatement();
                                    try {
                                        ResultSet rs = st.executeQuery("SELECT * FROM attendance ");
                                        while (rs.next()) {
                                %>
                                <tr>
                                    <td><%=rs.getString("sid")%></td>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("email")%></td>
                                    <td><%=rs.getString("dept")%></td>
                                    <td><%=rs.getString("year")%></td>
                                    <td><%=rs.getString("time")%></td>
                                </tr>
                                <%                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }


                                %>
                            </table>
                            <!-- \\ Begin Tab side \\ -->              
                            <!-- // End Tab Side // -->
                        </div>
                    </div>
                    <div class="Contact_sec" id="contact">
                        <footer>
                            <div class="Cntr">                
                                <p> © 2024</p>
                            </div>
                        </footer>
                    </div>
                    <!-- // End Contact Section // -->
                </div>
                <!-- // End Container // -->
            </div>
            <!-- // End Layout Frame // -->
        </div>
        <!-- // End Design Holder // -->
        <div id="loader-wrapper">
            <div id="loader"></div>

            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- <<Attched Javascripts>> -->
        <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.sudoSlider.min.js"></script>
        <script type="text/javascript" src="js/global.js"></script>
        <script type="text/javascript" src="js/modernizr.js"></script>

    </body>
</html>
