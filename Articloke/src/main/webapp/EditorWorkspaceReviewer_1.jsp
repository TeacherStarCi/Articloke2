<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Utils.JSPComponent" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" defer></script>
        <script src="Asset/CSS/StarCiReact.jsx"></script>
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS.css"/> 
        <script src="https://kit.fontawesome.com/9689277209.js" crossorigin="anonymous"></script>
        <title>Editor Workspace</title>
    </head>
    <body>
        <div class ="starci-full-container starci-img-background ">
            <jsp:include page="NavBar.jsp" />
            <div class ="container"> 
                <div class ="mt-5"> Home > Profile > Editor Workspace</div>

                <div style  ="background-color: transparent">
                    <div class = "h4 mt-5 starci-color"> Navigation</div>

                    <div class ="row m-0 p-0 mt-3" style = "width: 360px"> 
                        <c:if test = "${sessionScope.user.role == 'Editor-In-Chef'}">
                            <div class ="">
                                <button class = "shadow btn btn-light starci-background"><span class = "text-center">Reviewer   
                                          </span> </button> </div>
                        </c:if>
                                    <c:if test = "${sessionScope.user.role != 'Editor-In-Chef'}">
                            <form id ="EditorWorkspaceDebater" action = "EditorWorkspaceDebater.jsp"></form> 
                              <form id = "EditorWorkspacePublisher" action = "EditorWorkspacePublisher.jsp"> </form>
                                        <div class ="d-flex  justify-content-between p-0" style = "width: 400px">

                                            <button class = "shadow btn starci-no-active" ><span class = "text-center">Reviewer   
                                         </span> </button>

                                <button form ="EditorWorkspaceDebater" class = "shadow btn starci-button-color" ><span class = "text-center">Debater   
                                     </span> </button>
       <button form ="EditorWorkspacePublisher" class = "shadow btn starci-button-color"><span class = "text-center">Publisher  
                                         </span> </button>

                            </div>
                        </c:if>

                    </div>
                </div>
                <div class = "h2 mt-5 "> Result</div>

                <div class ="row m-0 mt-3 p-0">
                    <div class ="col-4 p-0 position-relative starci-background shadow starci-rounded p-3">
                        <div class ="row"> </div>
                        <div class ="h5 mb-0"> Keyword </div>
                        <input tyle ="text" class ="form-control" name = "keyword" value = "${requestScope.keywork}">
                        <div class ="h5 mb-0 mt-3"> Title </div>
                        <input tyle ="text" class ="form-control" name = "title" value = "${requestScope.title}">

                        <div class ="row mt-3">
                            <div class ="col-6">
                                <div class ="h5 mb-0"> Author </div>
                                <input tyle ="text" class ="form-control" name = "username" value = "${requestScope.username}">
                            </div>
                            <div class ="col-6">
                                <div class ="h5 mb-0"> Topic </div>

                                <select name = "topic" class = "form-control">
                                    <option value ="" "All"> All </option>
                                    <c:forEach items = "${applicationScope.topics}" var = "topic">
                                        <option value = "${topic.topic}"> ${topic.topic} </option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class ="h5 mt-3 mb-0"> Created Date </div>
                        <div class ="row position-relative">

                            <div class ="col-6"> 

                                From <input type = "Date" class = "form-control"> </div>  

                            <div class ="col-6"> To <input type = "Date" class = "form-control"></div>  
                        </div>

                    </div>
                    <div style = "overflow: auto" class ="starci-hide-scrollbar col-8 position-relative p-0 ps-5 ">

                        <c:forEach items = "${applicationScope.pendingPapers}" var = "paper"> 
                            <a href ="ReviewPaperShowServlet?ID=${paper.ID}" class = "starci-no-hyperlink">
                                <div class ="bg-white starci-rounded shadow mb-3 starci-hover-gray starci-pointer" style = "width: calc(100% - 1rem)">
                                    <div class ="row p-3">
                                        <div class ="col-4">
                                            <img src ="${paper.picture}" class = "img-fluid">
                                        </div>
                                        <div class ="col-8" style = "height:0">
                                            <div class = "h2"> ${paper.title} </div>
                                            <div class ="row"> 
                                                <div class ="col-6">
                                                    <div> <span style = "font-weight: bold"> ID </span> ${paper.ID} </div>
                                                    <div>  <span style = "font-weight: bold"> Author </span> ${paper.username} </div>
                                                </div>
                                                <div class ="col-6">
                                                    <div> <span style = "font-weight: bold"> Created Date </span> ${paper.createdDate} </div>
                                                    <div>  <span style = "font-weight: bold">Modified Date </span> 
                                                        <c:if test = "${not empty paper.modifiedDate}">
                                                            ${paper.modifiedDate}
                                                        </c:if>
                                                        <c:if test = "${empty paper.modifiedDate}">
                                                            Not Yet
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>  <span style = "font-weight: bold"> Topic </span> ${paper.topic} <img src = "${applicationScope.topicsPicture.get(paper.topic)}" style = "width: 1.5rem"> </div>
                                            <div>  <span style = "font-weight: bold"> Description </span> <br> ${paper.description} </div>
                                        </div>

                                    </div>

                                </div>
                            </a>
                        </c:forEach>
                    </div>  
                </div>
            </div>
            <section class ="starci-end"> </section>
        </div>
    </body>
</html>
