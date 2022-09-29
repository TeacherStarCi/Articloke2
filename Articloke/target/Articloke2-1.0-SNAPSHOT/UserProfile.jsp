<%-- 
    Document   : UserProfile
    Created on : 27-Sep-2022, 23:56:40
    Author     : tucuo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER PROFILE</title>
          <link rel="stylesheet" href="CSS/Utils2.css" />
         <link rel="stylesheet" href="CSS/DivCustom.css" />
    </head>
    <body>
        <div style="width: 1300px; height: 1000px;top: 110px;border: 2px solid">
            <div class="LeftComponent" style="width: 300px; height: 700px; left: 105px;top: 80px; border-radius: 15px; border: 2px solid
                 ;background-color: #D5E6BD">
                <div class="horizontal-center" style="width: 150px; height: 150px; top: 15px">
                    <img class="center" style=" border-radius: 100%;" src="Image/InstagramIcon.png">
                    <div class="horizontal-center" style="top: 140px">
                        @105716176304620963202
                    </div>
                </div>
                <div style="top: 240px; left: 40px">
                    Navigation
                </div>
                <div style="border-radius: 10px; top: 270px; width: 250px; left: 25px;height: 120px;border: 2px solid">
                    <a href="InformationForwardServlet">    
                        <div style="width: 250px; height: 60px; top: 0px; ;left: 0px">
                            <img src="Image/UserProfileIcon.png" style="top: 15px; left: 20px; height: 30px; width: 30px">
                            <div class="vertical-center" style="right: 30px; color: black; font-size: 20px; font-weight: bold">
                                INFORMATION 
                            </div>
                        </div> 
                    </a>
                    <a href="InformationServelet">    
                        <div style="width: 250px; height: 60px; top: 60px; ;left: 0px">
                            <img src="Image/SecurityIcon.png" style="top: 15px; left: 20px; height: 30px; width: 30px">
                            <div class="vertical-center" style="right: 50px; color: black; font-size: 20px; font-weight: bold">
                                SECURITY 
                            </div>
                        </div> 
                    </a>
                </div>
                <div style="width: 280px; height: 300px; top: 400px; ">
                    <div class="horizontal-center" style="top: 20px; font-size: 32px; font-weight: bold">
                        daBOX 
                    </div>
                    <div class="horizontal-center" style="width: 100px; height: 100px; top: 70px">
                        <img src="Image/daBOXIcon.png" style="width: 100px; height: 100px; top: 0px; left: 0px">
                    </div>
                    <div class="horizontal-center" style="top:180px">
                        <div class="horizontal-center" style="width: 260px; height: 100px; text-align: justify">
                            daBOX is the place where you can keep
                            your favourite Articles, your Papers
                            that have not been submitted yet.
                        </div>
                    </div>
                </div>
            </div>
            <div style="width: 800px; height: 700px; top: 80px; right: 80px;border: 2px solid; border-radius: 15px">
                <div style="width: 700px; height: 300px; top: 50px; right: 50px;border: 2px solid; border-radius: 15px">
                    <div class="horizontal-center" style="top: 10px; font-size: 24px; font-weight: bold">
                        EDIT INFORMATION
                    </div>
                    <div>
                        <div style="width: 250px; top: 60px; left: 80px; height: 30px">
                            First Name: 
                            Nguyen Van Tien 
                            <a href="">
                                <img src="Image/penIcon.png" style="width: 16px; height: 16px; margin-top: 4px; margin-left: 8px">
                            </a>
                        </div>
                        <div style="width: 250px; top: 60px; left: 400px; height: 30px">
                            Last Name: 
                            (K16_HCM)
                            <a href="">
                                <img src="Image/penIcon.png" style="width: 16px; height: 16px; margin-top: 4px; margin-left: 8px">
                            </a>
                        </div>

                        <div style="width: 250px; top: 110px; left: 80px; height: 30px">                         
                            Date of Birth:(Blank)                                                                
                            <a href="">
                                <img src="Image/penIcon.png" style="width: 16px; height: 16px; margin-top: 4px; margin-left: 8px">
                            </a>
                        </div>
                        <div style="width: 250px; top: 110px; left: 400px; height: 30px">    
                            Address:(Blank)
                            <a href="">
                                <img src="Image/penIcon.png" style="width: 16px; height: 16px; margin-top: 4px; margin-left: 8px">
                            </a>
                        </div>

                        <div style="width: 250px; top: 160px; left: 80px; height: 30px">
                        Organization:(Blank)                               
                            <a href="">
                                <img src="Image/penIcon.png" style="width: 16px; height: 16px; margin-top: 4px; margin-left: 8px">
                            </a>
                        </div>
                        <div style="width: 250px; top: 160px; left: 400px; height: 30px">                            
                        Phone Number:Blank)                           
                            <a href="">
                                <img src="Image/penIcon.png" style="width: 16px; height: 16px; margin-top: 4px; margin-left: 8px">
                            </a>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
