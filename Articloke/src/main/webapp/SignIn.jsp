<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGN IN</title>
        <link rel="stylesheet" href="CSS/Utils.css" />
        <link rel="stylesheet" href="CSS/DivCustom.css" />
    </head>
    <body>
        <div style = "width: 100%; height: 810px; top: 0; left: 0">
            <form id = "SignIn" action="SignInServlet" method="GET">
            </form>

            <div style = "width: 100%; height: 800px; top:180px; left:0">
                <div class ="horizontal-center" style = "width: 1000px; height: 500px; border: 3px solid">
                    <div class ="horizontal-center" style = "top:15px; font-size:40px; font-weight: bold">
                        SIGN IN
                    </div>
                    <div style = "height: 420px; width: 50%; top: 80px; left: 0">
                        <div class="horizontal-center" style = "top:0;font-size:20px; font-weight: bold">
                            With Articloke account
                        </div>
                        <div class="horizontal-center" style = "top:50px;font-size:20px">
                            Username
                        </div>
                        <input form = "SignIn" class ="horizontal-center" style ="top: 80px;width: 400px" type ="text" name = "username" value = "${requestScope.username}" placeholder="Username">                      
                        <div class="horizontal-center" style = "top:110px;font-size:20px">
                            Password
                        </div>
                        <input form = "SignIn" class ="horizontal-center" style ="top: 140px;width: 400px" type ="password" name = "password" value = "" placeholder="Password" >            

                        <a href = "ForgetPasswordHandleServlet">
                            <c:if test = "${requestScope.signInError}">
                                <div class="horizontal-center" style = "width: 330px; color: red; top:170px;font-size:20px">
                                    Incorrect username or password.
                                </div>
                            </c:if>



                            <div class="horizontal-center" style = "top:200px;font-size:20px">
                                Forget Password?
                            </div>
                        </a>
                        <div class="horizontal-center" style = "top:230px;font-size:20px;width:320px">
                            Do not have an account? &nbsp;
                            <a href = "SignUp.jsp" style = "font-weight: bold">
                                <div style = "display: inline-block; font-size:20px">                  
                                    Sign Up 
                                </div>
                            </a>

                        </div>

                        <input form = "SignIn" class ="horizontal-center" style ="top: 300px" type = "submit" name ="" value = "SIGN IN">  
                    </div> 







                    <div style = "height: 420px; width: 50%; top: 80px; right: 0">
                        <div class="horizontal-center" style = "top:0;font-size:20px; font-weight: bold">
                            With Google account
                        </div>
                        <a class = "cc" href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/Articloke/GoogleSignInServlet&response_type=code
                           &client_id=52738076021-1bvsa3fq1vg3ktl82ghicqd9c8k3vet9.apps.googleusercontent.com&approval_prompt=force">
                            <div class = "horizontal-center hover-white-image" style = "top: 80px; width: 80px; height: 80px;"> 
                                <img style ="width: 100%; height: 100%" src = "Image/GoogleIcon.png"> 
                            </div>
                        </a>

                        <div class = "horizontal-center" style = "width:350px;top:200px;font-size:20px"> 
                            By Continuing with Google , you are agreeing to our Terms
                            & Conditions.
                        </div>





                    </div>
                </div>
                <jsp:include page="Footer.jsp" />
                <jsp:include page="Navigation_Bootstrap.jsp" />
            </div>
        </div>
    </body>
</html>
