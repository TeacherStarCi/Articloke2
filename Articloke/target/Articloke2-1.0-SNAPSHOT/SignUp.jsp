<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS.css"/>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/9689277209.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <div class = "starci-full-container">

            <div class ="position-absolute p-5 starci-center starci-rounded shadow" style ="border: 1px solid; width: 600px">
                <div class = "starci-font-alteration text-center h1">
                    Sign Up
                </div>

                <form action = "SignUpServlet" id = "SignUpServlet" method = "get">                 
                </form>

                <div class = "h3  starci-color text-center mt-3"> 
                    Create an Articloke account
                </div>

                <div class = "h4 mb-0 mt-3">
                    Username*
                </div>
                <input form = "SignUpServlet" type="text" class="form-control" name = "username" value = "${requestScope.username}">   
                <span style = "color:red">${requestScope.usernameError}</span>

                <div class = "h4  mb-0  mt-3"> 
                    Password*
                </div> 
                <input form = "SignUpServlet" type="password" class="form-control" name = "password" value = "">
                <span style = "color:red">${requestScope.passwordError} </span>

                <div class = "h4  mb-0  mt-3">
                    Confirm Password*
                </div>
                <input form = "SignUpServlet" type="password" class="form-control"  name = "confirm" value = "">   
                <span style = "color:red">${requestScope.confirmError} </span>


                <div class ="row">
                    <div class ="col-6"> 
                        <div class = "h4  mb-0  mt-3">
                            First Name*
                        </div>
                        <input form = "SignUpServlet" type ="text" class="form-control"  name = "firstName" value = "${requestScope.firstName}">
                    </div> 
                    <div class ="col-6">
                        <div class = "h4  mb-0  mt-3">
                            Last Name*
                        </div>
                        <input form ="SignUpServlet" type="text" class="form-control" name = "lastName" value = "${requestScope.lastName}">
                    </div> 
                </div>
                <c:if test = "${not empty requestScope.firstNameError}">
                    <span style = "color:red">
                        ${requestScope.firstNameError} 
                    </span> 
                    <br> 
                </c:if>  
                <span style = "color:red">
                    ${requestScope.lastNameError} 
                </span>
                <div class ="row mt-3"> 
                    <div class ="col-2 position-relative">
                        <input style = "width: 30px; height: 30px" class = "position-absolute starci-center" form ="SignUpServlet" name ="term" form ="SignUp" class = "vertical-center mr-3" type = "checkbox" value = "checked">
                    </div>
                    <div class ="col-10">
                        <div class = "vertical-center" style="text-align:justify; left: 30px;"> 
                            I have read and understood the Registered User Agreement and agree to be bound by all of its terms.
                        </div>
                    </div>
                </div> 
                <c:if test = "${not empty requestScope.termError}"> 
                    <span style = "color:red">
                        ${requestScope.termError} <br>
                    </span> 
                </c:if>
         <button form = "SignUpServlet" class ="btn btn-lg btn-light starci-background position-relative mt-3 starci-horizontal-center"> <span class = "h4"> Sign Up </span></button>
                <div class = "mt-3 text-center">
                    Already have an account? 
                    <a href = "SignIn.jsp" class = "starci-hyperlink">
                        Sign In
                    </a>   
                </div>
            </div>

        </div>  
        <!-- End Section 1 -->

    </div>
    <!-- End Div Surround -->
</body>
</html>
