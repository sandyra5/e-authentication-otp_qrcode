<%-- 
    Document   : index
    Created on : 19 May, 2021, 10:44:56 AM
    Author     : JAVA-JP
--%>

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
    <%
        if (request.getParameter("Register_Success") != null) {
    %>
    <script>alert('Registration Success');</script>
    <%            }
    %>
    <%
        if (request.getParameter("Failed") != null) {
    %>
    <script>alert('Login Failed');</script>
    <%            }
    %>
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
                                            <a href="index.jsp">Home</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li>
                                            <a href="Student_login.jsp">Student</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li>
                                            <a href="student_signup.jsp">Register</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li class="active">
                                            <a href="Staff_login.jsp">Staff</a>
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
                    <div class="Contact_sec" id="contact">
                        <div class="Get_sec">
                            <div class="Mid">		
                                <center><h2>Staff Login</h2></center><br><br><br>
                                <!-- \\ Begin Left Side \\ -->
                                <div class="Leftside">
                                    <br>
                                    <form action="staff" method="post">
                                        <fieldset>
                                            <p><b>Email :</b></p>
                                            <p><input type="text" placeholder="Enter Your Email" name="name" style="color: black;" required="" class="field"></p>
                                            <p><b>Password :</b></p>
                                            <p><input type="password" placeholder="Enter Your Password" name="pass" style="color: black;" required="" class="field"></p><br>
                                            <p><button type="submit" style="width: 120px;" class="button btn-success">Login</button>
                                        </fieldset>
                                    </form>
                                </div>
                                <!-- // End Left Side // -->
                                <!-- \\ Begin Right Side \\ -->
                                <div class="Rightside">
                                    <img src="img/login.jpg" width="500" height="450" />
                                </div>
                                <!-- // End Right Side // -->
                            </div>
                            <!-- // End Footer // -->
                        </div>
                        <!-- // End Get Section // -->

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
