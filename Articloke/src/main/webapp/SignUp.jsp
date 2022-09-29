<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGN UP</title>
        <link rel="stylesheet" href="CSS/Utils2.css" />
        <link rel="stylesheet" href="CSS/DivCustom.css" />

    </head>
    <body>
        <form id = "SignUp" action = "SignUpServlet" method="">
        </form>
        <div style = "width: 100%; height: 1200px">
            <div class ="horizontal-center" style = "width: 600px; height: 800px; border: 3px solid; top: 140px">
                <div class ="horizontal-center" style = "top:15px; font-size:40px; font-weight: bold">
                    SIGN UP
                </div>
                <div class ="horizontal-center" style = "top:80px; font-size:20px; font-weight: bold">
                    Create an Articloke account
                </div>
                <div style = "top:160px;font-size:20px" class ="horizontal-center">
                    Username* 
                </div>
                <input name ="username" value ="${requestScope.username}" placeholder="Username" form ="SignUp" type = "text" style = "top:190px;width: 500px" class = "horizontal-center">

                <div class ="horizontal-center" style = "top:220px; font-size:20px">
                    Password*
                </div>
                <input name ="password" value ="" placeholder="Password" form ="SignUp" type = "password" style = "top:250px;width: 500px" class = "horizontal-center">
                <div class ="horizontal-center" style = "top:280px; font-size:20px">
                    Confirm Password* 
                </div>  
                <input name ="confirm" value ="" placeholder="Confirm Password" form ="SignUp" type = "password" style = "top:310px;width: 500px;" class = "horizontal-center">
                <div class ="horizontal-center" style = "top:340px; font-size:20px">
                    Name*
                </div>

                <input name ="firstName" value ="${requestScope.firstName}" placeholder="First Name" form ="SignUp"  type = "text" style = "top:370px;width: 238px; left:42px" >
                <input name ="lastName" value ="${requestScope.lastName}" placeholder="Last Name" form ="SignUp"type = "text" style = "top:370px;width: 238px; right:42px">
                <div style = "top:420px;height: 40px; width: 100%">
                    <div class = "horizontal-center" style = "top:40px; width: 500px">
                        <input name ="term" form ="SignUp" class = "vertical-center" type = "checkbox" value = "checked">

                        <div class = "vertical-center" style="text-align:justify; left: 30px;"> 
                            I have read and understood the Registered User Agreement and agree to be bound by all of its terms.
                        </div>
                    </div>

                </div> 
                <c:if test = "${requestScope.signUpError}">
                    <div class ="horizontal-center " style ="top: 520px; color: red; font-size:20px"> 
                        <c:if test = "${not empty requestScope.usernameError}">
                            <div class = "horizontal-center no-break" style = "display: inline-block ">
                                ${requestScope.usernameError} 
                            </div>
                            <br>

                        </c:if>
                        <c:if test = "${not empty requestScope.passwordError}">
                            <div class = "horizontal-center no-break" style = "display: inline-block ">
                                ${requestScope.passwordError}   </div>
                            <br>
                        </c:if>
                        <c:if test = "${not empty requestScope.confirmError}">
                            <div class = "horizontal-center no-break" style = "display: inline-block ">
                                ${requestScope.confirmError}   </div> <br>
                            </c:if>
                            <c:if test = "${not empty requestScope.firstNameError}">
                            <div class = " horizontal-center no-break" style = "display: inline-block ">
                                ${requestScope.firstNameError} </div>  <br> 
                            </c:if>
                            <c:if test = "${not empty requestScope.lastNameError}">
                            <div class = "horizontal-center no-break" style = "display: inline-block ">
                                ${requestScope.lastNameError} </div>   <br>
                            </c:if>
                            <c:if test = "${not empty requestScope.termError}">
                            <div class = "horizontal-center no-break" style = "display: inline-block ">
                                ${requestScope.termError} </div> <br>

                        </c:if>


                    </div>

                </c:if>
                <input form ="SignUp" class ="horizontal-center" style ="top: 690px" type = "submit" name ="" value = "SIGN UP">  

            </div>
            <jsp:include page="Footer.jsp" />
            <jsp:include page="Navigation.jsp" />
    </body>
</html>
