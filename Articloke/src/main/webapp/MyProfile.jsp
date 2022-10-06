<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>

        <div class = "container-fluid p-0 position-absolute" style = "min-height: 130%">
            <jsp:include page="Navigation.jsp" /> 
            <div class ="container p-0 position-relative" style ="height: 160px; border-bottom: 2px solid">             

                <img src ="${sessionScope.user.picture}" style = "width: 120px; height: 120px; top: 100px;" class = "custom-horizontal-center position-absolute rounded-circle" >       

            </div>
            <div class ="container p-0 position-relative " style ="margin-top: 70px">             
                <span class ="position-relative d-inline-block custom-horizontal-center h2" >
                    ${sessionScope.user.firstName} ${sessionScope.user.lastName}

                </span>
                <br>
                <span class ="position-relative d-inline-block custom-horizontal-center">
                    @${sessionScope.user.username}
                </span> <br>
                <div class ="container p-0 position-relative">
                    <div class = "row mt-5">
                        <div class ="col-6">
                            <span class ="position-relative d-inline-block h3 mb-3" >
                                General & Statistic
                            </span>    
                            <br>
                            <div style = "font-size: 20px" > 
                                Date Of Birth: ${sessionScope.user.DOB} <br>
                                Email: ${sessionScope.user.email} <br>
                                Address: ${sessionScope.user.address} <br>
                                Role: ${sessionScope.user.role} <br>
                                Organization: ${sessionScope.user.organization} <br>
                                Phone Number: ${sessionScope.user.organization} <br>
                                <div class ="custom-horizontal-line"></div>
                                <span class ="h4"> Artichoke Pendals: 999  <img src ="Image/Flower.png" class ="d-inline-block position-relative" style ="width: 20px; top: -2px"> 
                                </span>
                            </div>  
                        </div>
                        <div class ="col-6">
                            <span class ="position-relative d-inline-block h3" style ="margin-bottom:15px" >
                                Setting & Security 
                            </span> <br>
                            <div class ="container p-0" style = "border: 2px solid"> 
                                <div class = "container-fluid p-0 custom-hover-topic" style = "height: 60px">
                                    <span class = "d-inline-block h4 position-relative custom-center ">
                                     Edit Information &nbsp; <img src = "Image/EditInf.png" style = "width: 36px;">
                                       
                                    </span>
                                
                                </div>
                            <div class = "container-fluid p-0 custom-hover-topic" style = "height: 60px">
                                    <span class = "d-inline-block h4 position-relative custom-center "> 
                                         Change Password &nbsp; <img src = "Image/ChangePassword.png" style = "width: 36px;">
                                    </span>
                                
                                </div>
                                    <div class = "container-fluid p-0 custom-hover-topic" style = "height: 60px">
                                    <span class = "d-inline-block h4 position-relative custom-center "> 
                                       Authenticate Email &nbsp; <img src = "Image/EmailS.png" style = "width: 36px;">
                                    </span>
                                
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>




                <div class ="container px-0 pt-5 position-relative">
                    <span class ="position-relative d-inline-block h3" >
                        Respiratory
                    </span>
                    <div class = " row mt-3">
                        <div class ="col-6"> 
                            <span class = "position-relative d-inline-block h4" style ="color:#C6B6C5" > My Papers </span>
                            <div class ="position-relative mt-2">
                                <div class ="row">
                                    <div class ="col-8">
                                        <span class ="h4">${requestScope.papers.get(0).title}</span> 
                                        <br>
                                        Date Modified: 24h 18/03
                                        <br>


                                        Content: Nguyen Van Tu Cuong la idol top top 100000k follow ...
                                    </div>

                                    <div class ="col-4">
                                        <button type ="text" class = "btn btn-light border-dark position-relative custom-center"> Edit</button>
                                    </div>
                                </div>
                            </div>

                            <div class ="position-relative mt-3">
                                <div class ="row">
                                    <div class ="col-8">
                                        <span class ="h4">Paper Name abcxyz</span> 
                                        <br>
                                        Date Modified: 24h 18/03
                                        <br>


                                        Content: Nguyen Van Tu Cuong la idol top top 100000k follow ...
                                    </div>

                                    <div class ="col-4">
                                        <button type ="text" class = "btn btn-light border-dark position-relative custom-center"> Edit</button>
                                    </div>
                                </div>
                            </div>

                            <span class = "position-relative d-inline-block mt-3"> Show more Papers </span></div>     
                        <div class ="col-6"> 
                            <span class = "position-relative d-inline-block h4" style ="color:#C6B6C5" > My Articles </span>
                            <div class ="position-relative mt-3">
                                <div class ="row">
                                    <div class ="col-3">
                                        <img class = "d-inline-block p-relative img-fluid" src ="Image/Article/AR001.jpg"> 

                                        <br>

                                    </div>
                                    <div class ="col-6">
                                        <span class ="h4">Paper Name abcxyz</span> <br>
                                        Date Created: 24h 18/03 <br>
                                        Downloaded: 9999
                                    </div>  
                                    <div class ="col-3">
                                        <button type ="text" class = "btn btn-light border-dark position-relative custom-center"> Edit</button>
                                    </div>
                                </div>
                            </div>

                            <div class ="position-relative mt-3">
                                <div class ="row">
                                    <div class ="col-3">
                                        <img class = "d-inline-block p-relative img-fluid" src ="Image/Article/AR001.jpg"> 

                                        <br>

                                    </div>
                                    <div class ="col-6">
                                        <span class ="h4">Paper Name abcxyz</span> <br>
                                        Date Created: 24h 18/03 <br>
                                        Downloaded: 9999
                                    </div>  
                                    <div class ="col-3">
                                        <button type ="text" class = "btn btn-light border-dark position-relative custom-center"> Edit</button>
                                    </div>
                                </div>
                            </div>

                            <div class ="position-relative mt-3">
                                <div class ="row">
                                    <div class ="col-3">
                                        <img class = "d-inline-block p-relative img-fluid" src ="Image/Article/AR001.jpg"> 

                                        <br>

                                    </div>
                                    <div class ="col-6">
                                        <span class ="h4">Paper Name abcxyz</span> <br>
                                        Date Created: 24h 18/03 <br>
                                        Downloaded: 9999
                                    </div>  
                                    <div class ="col-3">
                                        <button type ="text" class = "btn btn-light border-dark position-relative custom-center"> Edit</button>
                                    </div>
                                </div>
                            </div>
                            <span class = "position-relative d-inline-block mt-3"> Show more Papers </span></div>     

                    </div>          

                </div>     




            </div>
            <jsp:include page="Footer.jsp" /> 
        </div>
    </body>
</html>
