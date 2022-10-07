<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
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
                                <span class ="h4"> Artichoke Pendals: ${requestScope.totalCount}  <img src ="Image/Flower.png" class ="d-inline-block position-relative mt-2" style ="width: 30px;top:-7px"> 
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

                            <c:if test = "${empty requestScope.papers}">
                                <br>    <span class = "h4"> You have not created any paper. </span>

                            </c:if>

                            <c:if test = "${not empty requestScope.papers}"> 
                                <c:forEach items = "${requestScope.papers}" var = "paper" begin = "0" end = "4">
                                    <div class ="position-relative mt-2">
                                        <div class ="row">
                                            <div class ="col-8">
                                                <span class ="h4">${paper.title}</span> 
                                                <br>
                                                Date Modified: ${paper.modifiedDate}
                                                <br>
                                                Description: ${paper.description} <br>
                                                Published Status: ${paper.publishedStatus}

                                            </div>

                                            <div class ="col-4">
                                                <button type ="text" class = "btn btn-light border-dark position-relative custom-center"> Edit</button>
                                            </div>
                                        </div>
                                    </div>

                                </c:forEach>
                                <span class = "position-relative d-inline-block mt-3"> Show more Papers </span>
                            </c:if>


                        </div>     
                        <div class ="col-6"> 

                            <span class = "position-relative d-inline-block h4" style ="color:#C6B6C5" > My Articles </span>
                            <c:if test = "${empty requestScope.articles}">
                                <br> <span class = "h4"> You have no published article. </span>

                            </c:if>

                            <c:if test = "${not empty requestScope.articles}"> 
                                <c:forEach var = "article" items = "${requestScope.articles}" begin = "0" end = "4" >
                                    <div class ="position-relative mt-3">
                                        <div class ="row">

                                            <div class ="col-3">
                                                <img class = "d-inline-block p-relative img-fluid" src ="${article.picture}"> 

                                                <br>

                                            </div>
                                            <div class ="col-6">
                                                <span class ="h4">${article.title}</span> <br>
                                                Published Date: ${article.publishedDate} <br>
                                                Downloaded: 9999 <br>
                                                Artichoke Pendals Acheived: xyz
                                            </div>  
                                            <div class ="col-3">
                                                <button type ="text" class = "btn btn-light border-dark position-relative custom-center"> Edit</button>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <span class = "position-relative d-inline-block mt-3"> Show more Articles </span></div>    
                            </c:if>



                    </div>          

                </div>     



  
            </div>
                           
            <jsp:include page="Footer.jsp" />           

          </div>    
    </body>
</html>
