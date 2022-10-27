<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="Asset/css/Custom.css" />
        <link rel="stylesheet" href="Asset/css/Navigation.css" />
        <link rel="stylesheet" href="Asset/css/Footer.css" />
        <link rel="stylesheet" href="Asset/css/Home.css" />
    </head>
    <body>
        <div class = "Home" style = "position:absolute">

            <div class = "Layer1">
                <div class = "Layer1-Img">

                </div>
                <div class = "Layer1-Content">
                    <div class ="Layer1-Content-Right hover">

                        <img style = "height: 60px; width: 60px; position: absolute; top: 30px; left:30px" src = "Asset/img/Home/upload.png">
                        <div class = "large" style ="top:30px;left: 120px; position: absolute"> SUBMIT YOUR PAPER
                        </div>
                        <div style = "top:110px; left: 30px; position: absolute; max-width: 300px"> ARTICLOKE editors will receive your efforts, then publish it.</div>
                    </div>
                    <div class ="Layer1-Content-Left hover">

                        <img style = "height: 60px; width: 60px; position: absolute; top: 30px; left:30px" src = "Asset/img/Home/read.png">
                        <div class = "large" style ="top:30px;left: 120px; position: absolute"> FIND ARTICLES
                        </div>
                        <div style = "top:110px; left: 30px; position: absolute; max-width: 300px"> ARTICLOKE will finds the most relevant articles as you expected.</div>
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
