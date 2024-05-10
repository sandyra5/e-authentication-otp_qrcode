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
    <script>
        var loadFile = function (event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('output');
                output.src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        };
    </script>
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
                                        <li class="active">
                                            <a href="Student_login.jsp">Student</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li>
                                            <a href="student_signup.jsp">Register</a>
                                            <span class="menu-item-bg"></span>
                                        </li>
                                        <li>
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
                            <center><h1 style="color: white;font-weight: 600">E-Authentication System with QR Code & OTP</h1></center>
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
                                <center><h2>QR-Code Verification</h2></center><br><br><br>
                                <!-- \\ Begin Left Side \\ -->
                                <div class="Leftside">
                                    <%
                                        String id = (String) session.getAttribute("uid");
                                        String name = (String) session.getAttribute("uname");
                                        String email = (String) session.getAttribute("umail");

                                    %>
                                    <br>
                                    <form action="student_verify1.jsp" method="post" enctype="multipart/form-data">
                                        <fieldset>
                                            <input type="hidden" value="<%=id%>" name="id">
                                            <p><b>OTP :</b></p>
                                            <p><input type="text" placeholder="Enter Your OTP" name="otp" style="color: black;" required="" class="field"></p>
                                            <p><b>QR code :</b></p>
                                            <p><input type="file" name="file" style="color: black;" accept="image/x-png,image/gif,image/jpeg" onchange="loadFile(event)" required=""></p><br>
                                            <p><button type="submit" style="width: 120px;" class="button btn-success">Verify</button>
                                        </fieldset>
                                    </form>
                                </div>
                                <!-- // End Left Side // -->
                                <!-- \\ Begin Right Side \\ -->
                                <div class="Rightside">
                                    <img id="output" src="#" alt="Verify QR-Code" width="450" height="400" />
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
                                <p> © 2021</p>
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
