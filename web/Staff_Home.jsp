

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
        if (request.getParameter("Success") != null) {
    %>
    <script>alert('Login Success');</script>
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
                                        <li class="active">                                
                                            <a href="Staff_Home.jsp">Home</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li>
                                            <a href="student_details.jsp">Students</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li>
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
                            <h2>Welcome!</h2><br>            
                            <img src="img/main.jpg" width="1100" height="500" />
                            <div class="Line"></div>	
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
