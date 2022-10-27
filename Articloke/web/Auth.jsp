<%-- 
    Document   : Search
    Created on : 25-Sep-2022, 19:33:56
    Author     : tucuo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auth</title>
        <link rel="stylesheet" href="Asset/css/Custom.css" />
        <link rel="stylesheet" href="Asset/css/Navigation.css" />
        <link rel="stylesheet" href="Asset/css/Footer.css" />
        <link rel="stylesheet" href="Asset/css/Auth.css" />
    </head>
    <body>

        <div class = "Auth">
            <div class ="SignIn">
                <div class = "SignIn-Left">
                    <div class="large" style = "top:20px; left: 50%; transform: translate(-50%,0%); position: absolute">
                        SIGN IN
                    </div>
                     <div class="medium" style = "top:75px; left: 50%; transform: translate(-50%,0%); position: absolute">
                      Articloke Account
                    </div>
                    <div class ="SignIn-Left-Code">
                        <form action = "SignInServlet" method = "POST">
                            <div style = "text-align: center;"> USERNAME* </div> 
                            <input type = "TEXT" name ="usernamePara" size = "26" value ="${requestScope.usernamePara}" placeholder= "Username" >
                            <div style = "text-align: center;">  PASSWORD* </div>
                            <input type = "TEXT" name ="passwordPara" value ="" size = "26" placeholder= "Password" >
                            <div class = "error">${requestScope.signInError}</div>
                            <input type = "SUBMIT" style ="left: 50%; transform: translate(-50%,0%); bottom: 10px; position: absolute" class = "big" name ="submitForm" value ="SIGN IN" >
                            <a href = "ForgetPasswordHandleServlet">Forget Password?</a>
                        </form>
                    </div> 
                </div>
                <div class = "SignIn-Right">    
                       <div class="medium" style = "top:75px; left: 50%; transform: translate(-50%,0%); position: absolute">
                      Google Account
                      </div>
                     <a class = "cc" href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/Articloke/GoogleSignInServlet&response_type=code
                               &client_id=52738076021-1bvsa3fq1vg3ktl82ghicqd9c8k3vet9.apps.googleusercontent.com&approval_prompt=force">
                    <img class ="center" src = "Asset/img/Auth/googleicon2312-2ke-200h.png">
                     </a>
                    <div style = "text-align: center; bottom: 40px; left: 30px; max-width: 290px;   position: absolute"  >
                        By Continuing with Google , you are agreeing to our Terms
                                    & Conditions.
                                    </div>
                </div>

            </div>

            <div class ="SignUp">

                <div class="large" style = "top:40px; left: 50%; transform: translate(-50%,0%); position: absolute ">
                    SIGN UP
                </div>
                <div class ="SignUp-Code">
                    <form action = "SignUpServlet" method = "POST">
                        <div style = "text-align: center;"> USERNAME* </div> 
                        <input type = "TEXT" name ="usernamePara" size = "38" value ="${requestScope.usernamePara}" placeholder= "Username" >
                        <div class = "error"> ${requestScope.usernameError} </div>
                        <div style = "text-align: center;">  PASSWORD* </div>

                        <input type = "TEXT" name ="passwordPara" value ="" size = "38" placeholder= "Password" >
                        <div class = "error">${requestScope.passwordError}</div>
                        <div style = "text-align: center;"> CONFIRM PASSWORD* </div>
                        <input type = "TEXT" name ="confirmPara" size = "38" value ="" placeholder= "Confirm Password">
                        <div class = "error"> ${requestScope.confirmError}</div>
                        <div style = "text-align: center;"> NAME* </div>

                        <div class = "flex">
                            <input style = "margin-right: 4px" type = "TEXT" name ="firstNamePara" size = "16" value ="${requestScope.firstNamePara}" placeholder= "First Name">
                            <input  type="TEXT" name ="lastNamePara" size = "16" value ="${requestScope.lastNamePara}" placeholder= "Last Name"> 
                        </div>
                        <div class= "error">${requestScope.firstNameError}</div>
                        <div class = "error">${requestScope.lastNameError}</div>
                        <div style = "display:flex">
                            <input style = "margin:10px" type = "CHECKBOX" name = "termPara" value = "CHECKED">
                            <div style="text-align:justify"> 
                                I have read and understood the Registered User Agreement and agree to be bound by all of its terms.
                            </div> 
                            <br>
                        </div>
                        <div class = "error"> ${requestScope.termError} </div>
                        <input type = "SUBMIT" style ="left: 50%; transform: translate(-50%,0%); bottom: 60px; position: absolute" class = "big" name ="submitForm" value ="SIGN UP" >

                    </form>
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
