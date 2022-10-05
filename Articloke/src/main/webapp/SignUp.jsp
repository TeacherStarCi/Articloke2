<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test = "${not empty sessionScope.user}">
    <%
    String redirectURL = "Home.jsp";
    response.sendRedirect(redirectURL);
%>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="CSS/Utils.css" />
        <link rel="stylesheet" href="CSS/DivCustom.css" />

    </head>
    <body>
        
        <div class = "container-fluid p-0 position-absolute" style = "min-height: 140%">
            <jsp:include page="Navigation.jsp" /> 
            
            <div class ="position-absolute custom-center pb-3" style ="border: 1px solid;  width: 100%; max-width: 400px; top: 45%">
                <div class = "text-center h3 mt-3"> Sign Up</div>
       
                        <form action = "SignUpServlet" id = "SignUpServlet" method = "get"> </form>
                        
                     <div class = "h5 text-center mt-3"> Create an Articloke account</div>
                    <div class = "px-4 mt-4"> 
                    <div class = "mt-1"> Username*</div>
                         <input form ="SignUpServlet" type="text" class="form-control mt-1"  placeholder="Username" name = "username" value = "${requestScope.username}">   
                         <span style = "color:red">${requestScope.usernameError} </span>
                         <div class = "mt-1"> Password*</div> 
                         <input form ="SignUpServlet" type="password" class="form-control mt-1" placeholder="Password" name = "password" value = "">
                         <span style = "color:red">${requestScope.passwordError} </span>
                         <div class = "mt-1"> Confirm Password*</div>
                         <input form ="SignUpServlet" type="password" class="form-control mt-1"  placeholder="Confirm Password" name = "confirm" value = "">   
                        <span style = "color:red">${requestScope.confirmError} </span>
                         <div class = "mt-1"> Name*</div> 
                         <div class ="d-flex">
                             <div class = "pr-2">
                             <input form ="SignUpServlet" type="text" class="form-control mt-1" placeholder="First Name" name = "firstName" value = "${requestScope.firstName}">
                              
                             </div>
                             <div class = "pl-2">
                             <input form ="SignUpServlet" type="text" class="form-control mt-1" placeholder="Last Name" name = "lastName" value = "${requestScope.lastName}">
          </div> 
                         </div>
                             <c:if test = "${not empty requestScope.firstNameError}"><span style = "color:red">${requestScope.firstNameError} </span> <br> </c:if>  
                             <span style = "color:red">${requestScope.lastNameError} </span>
                             <div class = "custom-horizontal-center mr-2 position-relative d-flex mt-2">
                        <input form ="SignUpServlet" name ="term" form ="SignUp" class = "vertical-center mr-3" type = "checkbox" value = "checked">
                
                        <div class = "vertical-center" style="text-align:justify; left: 30px;"> 
                            I have read and understood the Registered User Agreement and agree to be bound by all of its terms.
                        </div>
                         
                    </div> 
                        <span style = "color:red">${requestScope.termError} </span> 
                        <br>
                         
                         
                         <input form ="SignUpServlet" type ="submit" class ="position-relative custom-horizontal-center mt-4 btn btn-light border-dark" value = "Sign Up">
                         <div class = "mt-3 text-center"> Already have an account? <a href = "SignIn.jsp" style ="color: black">  Sign In</a>   </div>
                         
                    
                          
            </div>
      
                                   
                                 
                         </div>           
            <jsp:include page="Footer.jsp" /> 
        </div>
    </body>
</html>
