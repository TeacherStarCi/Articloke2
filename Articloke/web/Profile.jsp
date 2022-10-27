


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <c:if test = "${empty sessionScope.user}"> <% response.sendRedirect("Home.jsp"); %> </c:if> --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="Asset/css/Profile.css" />
        <link rel="stylesheet" href="Asset/css/Custom.css" />
        <link rel="stylesheet" href="Asset/css/Navigation.css" />
        <link rel="stylesheet" href="Asset/css/Footer.css" />

    </head>
    <body>

        <div class = "Profile">


            <div class = "LeftComponent">
                <div class = "LeftComponent-PictureUsername">
                    <img style ="border-radius: 100%; position: absolute; width: 100px; right: 100px; top: 15px; left:  25px " src ="${sessionScope.user.picture}" >
                    <div style = "position: absolute;  top: 130px; left: 50%; transform: translate(-50%,0) "> 

                        @${sessionScope.user.username} 
                    </div>


                </div>
                <div style = "top: 255px; left: 40px;position: absolute"> Navigation </div>
                <div class = "LeftComponent-Navigation">

                    <a href = "InfoShowServlet">

                        <div class = "LeftComponent-Navigation-InfoTab hover">


                            <img src = "Asset/img/Profile/UserProfile.png" style="top: 15px; left: 20px; height: 30px; width: 30px; position: absolute">
                            <div class ="medium" style = "top: 50%; transform: translate(0,-50%); right: 20px; position: absolute"> INFORMATION </div>

                        </div>
                    </a>


                    <a href = "SecurityShowServlet">

                        <div class = "LeftComponent-Navigation-SecurityTab hover">
                            <img src = "Asset/img/Profile/Security.png" style="top: 15px; left: 20px; height: 30px; width: 30px; position: absolute">
                            <div class ="medium" style = "top: 50%; transform: translate(0,-50%); right: 50px; position: absolute"> SECURITY </div>
                        </div>
                    </a>

                </div>
                <div class = "LeftComponent-daBOX">
                    <div class = "extreme-large" style = "top: 20px; left: 50%; transform: translate(-50%,0); position: absolute"> daBOX </div>
                    <div class = "LeftComponent-daBOX-daBoxIcon">
                        <img style ="position:absolute; top: 0px; left: 0px; height: 100px;width: 100px" src = "Asset/img/Profile/daBOX.png">


                    </div>
                    <div style = "position:absolute; top: 180px;  left: 50%; transform: translate(-50%,0)"> 
                        <div style = "position:absolute; width: 260px;height: 100px; text-align: justify;  left: 50%; transform: translate(-50%,0)">
                            daBOX is the place where you can keep
                            your favourite Articles, your Papers
                            that have not been submitted yet. 
                        </div>
                    </div>
                </div>

            </div>



            <div class = "RightComponent">
                <div class = "RightComponent-Content">

                    <div class = "large" style = "left:50%; transform: translate(-50%,0%); top:10px; position: absolute"  >EDIT INFORMATION</div>
                    <div>
                        <div class = "RightComponent-Content-1st"> 
                              First Name: 
                              <c:if test = "${not empty sessionScope.user.firstName}">
                                  ${sessionScope.user.firstName} 
                           </c:if>
                              <c:if test = "${empty sessionScope.user.firstName}">
                                 (Blank) 
                                </c:if>
                                 <a href ="EditPropertiesServlet?fieldEdit=firstName">
                                 <img class ="smallIcon" src = "Asset/img/Profile/pen.png">
                                 </a>
                        </div>
                        <div class = "RightComponent-Content-2st"> 
                        Last Name: 
                              <c:if test = "${not empty  sessionScope.user.lastName}">
                          ${sessionScope.user.lastName}
                           </c:if>
                              <c:if test = "${empty sessionScope.user.lastName}">
                                 (Blank)
                                </c:if>
                                  <a href ="EditPropertiesServlet?fieldEdit=lastNumber">
                         <img class ="smallIcon" src = "Asset/img/Profile/pen.png">
                                 </a>
                        </div>
                        <div class = "RightComponent-Content-3st">
                            Date of Birth:  
                            <c:if test = "${empty requestScope.DOBEdit}">
                            <c:if test = "${not empty requestScope.user.DOB}">
                          ${requestScope.user.DOB}
                           </c:if>
                              <c:if test = "${!requestScope.user.DOB}">
                                 (Blank)
                                </c:if>
                                <a href ="EditPropertiesServlet?fieldEdit=DOB">   
                        <img class ="smallIcon" src = "Asset/img/Profile/pen.png">
                                </a>
                               </c:if>  
                                <c:if test = "${requestScope.DOBEdit}"> 
                                    <input size = "8" type = "TEXT" name = "firstNamePara" value ="${sessionScope.user.DOB}">
                                </c:if>
                        </div>
                        <div class = "RightComponent-Content-4st">
                        Address:
                              <c:if test = "${not empty requestScope.user.address}">
                          ${requestScope.user.address}
                           </c:if>
                              <c:if test = "${empty requestScope.user.address}">
                                 (Blank)
                                </c:if>
                                <a href ="EditPropertiesServlet?fieldEdit=address">
                                 <img class ="smallIcon" src = "Asset/img/Profile/pen.png">
                                 </a>
                        </div>
                        <div class = "RightComponent-Content-5st">
                        Organization:
                          
                        <c:if test = "${not empty requestScope.user.organization}">
                          ${requestScope.user.organization}
                           </c:if>
                              <c:if test = "${empty requestScope.user.organization}">
                                 (Blank)
                                </c:if>
                                  <a href ="EditPropertiesServlet?fieldEdit=organization">
                                 <img class ="smallIcon" src = "Asset/img/Profile/pen.png">
                                  </a>
                        </div>
                        <div class = "RightComponent-Content-6st"> 
                        Phone Number: 
                         <c:if test = "${not empty requestScope.user.phoneNumber}">
                          ${requestScope.user.phoneNumber}
                           </c:if>
                              <c:if test = "${empty requestScope.user.phoneNumber}">
                                 (Blank)
                                </c:if>
                                 <a href ="EditPropertiesServlet?fieldEdit=phoneNumber">
                                 <img class ="smallIcon" src = "Asset/img/Profile/pen.png">
                                  </a>
                        </div>
                                    
                                    <c:if test = "${requestScope.showConfirmEdit}">
                                       
                                        <input class = "quitebig" style ="position:absolute; bottom:30px; left: 50%; transform: translate(-50%,0%);" type ="SUBMIT" name ="submitForm" value ="CONFIRM EDIT">
                                        
                                    </c:if>
                    </div>
                  
                </div>

            </div>  













        <div class = "Footer">
            <div class = "Footer-Left">
                <div class = "Footer-Left-Logo">
                    <img style = "width: 60px; height: 60px; top:20px; left: 20px; position: absolute" src="Asset/img/NavigationFooter/Logo.png">
                    <div style ="font-size: 20px; top: 90px; left: 5px; position: absolute"> 𝔸𝕣𝕥𝕚𝕔𝕝𝕠𝕜𝕖
                    </div>
                </div>
                <div class = "Footer-Left-Copyright">
                    <div style = "max-width: 180px; left: 20px; top: 20px; position: absolute;">   Copyright © 2022 StarCi da Philospher
                        <br>
                        Cookies are used by this site.
                    </div> 
                </div>
                <div class = "Footer-Left-Contact">
                    <div style = "top:20px; left:10px; max-width:280px; position: absolute;">
                        PHONE NUMBER: 0828.678.897 
                        <br>
                        EMAIL: cuongnvtse160875@fpt.edu.vn
                        <br>
                        ADDRESS: 53 Tan Lap 1, Hiep Phu, 9 District, Ho Chi Minh
                        <br>

                    </div>
                </div>
            </div>
            <div class = "Footer-Right">
                <div class = "Footer-Right-Social">
                    <div class ="large" style = "top: 20px; left: 50px; position: absolute" >
                        Our Social Media
                    </div>
                    <img style = "left: calc(50% - 20px)   ;top:60px; height: 40px; width: 40px; position: absolute" src = "Asset/img/NavigationFooter/facebook@2x.png">
                    <img style = "left: calc(25% - 20px);  top:60px; height: 40px; width: 40px; position: absolute" src = "Asset/img/NavigationFooter/instagram@2x.png">
                    <img style = "left: calc(75% - 20px); top:62px; height: 36px; width: 40px; position: absolute" src = "Asset/img/NavigationFooter/tweeter@2x.png">
                </div>
            </div>
            <div class = "Footer-Right-Sponsor">
                <div class ="large" style = "top: 20px; position: absolute" >
                    Sponsor
                </div>
                <img style = "left: calc(50% - 20px)   ;top:60px; height: 40px; width: 40px; position: absolute" src = "Asset/img/NavigationFooter/sponsorlogo@2x.png">
            </div>
        </div>



        <div class = "Navigation">
            <div class = "Navigation-Left">
                <div class = "Navigation-Left-Logo">
                    <img class ="center" style = "height:50px;width:50px"
                         src = "Asset/img/NavigationFooter/Logo.png">

                </div> 
                <div class = " Navigation-Left-Title">
                    <div style ="font-size:32px" class = "center"  > 𝔸𝕣𝕥𝕚𝕔𝕝𝕠𝕜𝕖 </div>
                </div> 

            </div>
            <div class = "Navigation-Right" style = "display:flex">
                <a href = "Home.jsp">
                    <div class = "Navigation-Right-Home hover">
                        <div class ="center large"> Home
                        </div> 
                    </div>
                </a>
                <a href = "">
                    <div class = "Navigation-Right-Contact hover">

                        <div class ="center large"> Contact
                        </div>
                    </div> 
                </a>
                <a href = "">
                    <div class = "Navigation-Right-Article hover">

                        <div class ="center large"> Article
                        </div>
                    </div> 
                </a>
                <a href = "Search.jsp">
                    <div class = "Navigation-Right-Search hover">
                        <div class ="center"> 
                            <img style ="height: 40px; width: 40px;" src = "Asset/img/NavigationFooter/Search.png">
                        </div>
                    </div> 
                </a>
                <c:if test = "${empty sessionScope.user}">
                    <a href = "Auth.jsp" >
                        <div class = "Navigation-Right-Profile hover">


                            <div class ="center"> 
                                <img style ="height: 40px; width: 40px;" src = "Asset/img/NavigationFooter/User.png">
                            </div>
                        </div> 
                    </a>
                </c:if>
                <c:if test = "${not empty sessionScope.user}">
                    <a href = "Profile.jsp" >
                        <div class = "Navigation-Right-Profile hover">
                            <div class ="center"> 
                                <img style ="height: 40px; width: 40px;" src = "${sessionScope.user.picture}">
                            </div>
                        </div> 
                    </a>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>
