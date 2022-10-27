<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS.css"/>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/9689277209.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class = "starci-full-container">
            <div class ="position-absolute starci-center shadow p-5 starci-rounded" style ="border: 1px solid; width: 800px">
                <div class = "text-center h1 starci-font-alteration"> 
                    Sign In
                </div>

                <div class = "row">
                    <div class = "col-6 position-relative">
                        <form action = "SignInServlet" id = "SignInServlet" method = "POST">                          
                        </form>
                        <div class = "h3 starci-color text-center mt-3">
                            Articloke Account
                        </div>
                            <div class = "h4 mb-0 mt-4">  Username* </div>
                            <input form ="SignInServlet" type="text" class="form-control" placeholder="Username" name = "username" value = "${requestScope.username}">

                            <div class = "mt-3 mb-0 d-flex">
                                <span class ="h4 mb-0"> Password*</span>
                                <span style = "margin-left: auto; margin-top: auto"> 
                                    <a href = '#' class = "starci-hyperlink">   
                                        Forget Password?
                                    </a>
                                </span>

                            </div>

                            <input form ="SignInServlet" type="password" class="form-control" placeholder="Password" name = "password" value = "">
                            <c:if test = "${requestScope.signInError}">    
                                <div class = "text-center" style = "color:red">
                                    Incorrect Username or Password.
                                </div>
                            </c:if>
   
                        <button form ="SignInServlet" class ="btn btn-lg btn-light starci-background position-relative mt-3 starci-horizontal-center"> <span class = "h4"> Sign In </span></button>

                        <div class = "mt-3 text-center">
                            Do not have an account?
                            <a href = "SignUp.jsp" class = "starci-hyperlink">
                                Sign Up
                            </a>   
                        </div>
                    </div>

                    <div class ="col-6 position-relative">
                        <div class = "h3 text-center mt-3 starci-color">
                            Google Account
                        </div> 
                        <div class = "starci-center position-absolute" style = "width: 80px; height: 80px; top: 45%"> 
                            <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/Articloke/GoogleSignInServlet&response_type=code
                               &client_id=52738076021-1bvsa3fq1vg3ktl82ghicqd9c8k3vet9.apps.googleusercontent.com&approval_prompt=force">
                                <img class ="img-fluid" src = "Asset/Image/Application/GoogleIcon.png"> 
                            </a>
                        </div>
                        <div class = "position-absolute text-center" style ="bottom: 0" > By Continuing with Google , you are agreeing to our Terms
                            & Conditions.</div>
                    </div>
                </div>

            </div>           
        </div>
    </body>
</html>
