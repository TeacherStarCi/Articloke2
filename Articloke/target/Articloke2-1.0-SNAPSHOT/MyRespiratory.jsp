<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Respiratory</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class = "custom-big-container">
            <jsp:include page="Navigation.jsp" /> 
            <!--Section 1-->
            <div class="container mt-3 p-0">
                <h2>${sessionScope.user.firstName} ${sessionScope.user.lastName}'s Respiratory</h2>
                <br>
                <!-- Nav tabs -->
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link h5" style ="color: #000" data-toggle="tab" href="#paper">My Papers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link h5" style ="color: #000" data-toggle="tab" href="#article">My Articles</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="paper" class="container tab-pane p-0 active"><br>
                        <div class ="row ">
                            <div class ="col-3">
                                <div class ="h4 d-inline-block position-relative" style = "left: 12px; color: #C6B6C5">
                                    Search 
                                </div>  
                                <form action="SearchRespiratoryServlet">
                                    <div class ="d-flex">  
                                        <input type ="hidden" name ="currentTopic" value = "${requestScope.currentTopic}">

                                        <input style = "width: 60%" placeholder = "Keyword" class = "form-control" type = "text" name = "keyword" value = "${requestScope.keyword}">
                                        <input type ="image" src ="Image/SearchIcon.png" style = "width: 40px; height: 40px" class = "position-relative ml-2"> 
                                    </div>   
                                </form>                                   
                                <div class ="h4 d-inline-block position-relative mt-5" style = "color: #C6B6C5 ;left: 12px">
                                    Topic 
                                </div> 
                                <br>
                                <a href = "ClassifyTopicServlet?keyword=${requestScope.keyword}&currentTopic=All" class = "custom-no-hyperlink-display">  
                                    <div class = "h5 d-inline-block p-3 position-relative" style ="width: 250px;<c:if test = "${requestScope.currentTopic == 'All'}"> background: #C6B6C5</c:if>">
                                            All        
                                        </div>
                                    </a>  
                                <c:forEach items = "${requestScope.topics}" var = "topic">

                                    <a href = "ClassifyTopicServlet?keyword=${requestScope.keyword}&currentTopic=${topic.key}" class = "custom-no-hyperlink-display">  
                                        <div class = "h5 d-inline-block p-3" style ="width: 250px; <c:if test = "${topic.key == requestScope.currentTopic}"> background: #C6B6C5</c:if>">
                                            ${topic.key} (${topic.value})         
                                        </div>
                                    </a>   
                                </c:forEach>

                            </div>

                            <div class ="col-9">

                                <c:if test = "${not empty requestScope.papers}">

                                    <div style = "width: 100%; height: 600px; overflow: auto" class = "position-relative">
                                        <div style = "width: 100%; height: 50px" class = "position-relative row">
                                            <div class ="col-3 h4 position-relative" style = "color:#C6B6C5"> 
                                                Picture
                                            </div>
                                            <div class ="col-4 h4 position-relative" style = "color:#C6B6C5"> 
                                                General
                                            </div>
                                            <div class ="col-4 h4 position-relative" style = "color:#C6B6C5"> 
                                                Description
                                            </div>
                                            <div class ="col-1 h4 position-relative" style = "color:#C6B6C5"> 
                                                Edit
                                            </div>
                                        </div>
                                        <c:forEach items = "${requestScope.papers}" var = "paper">

                                            <div class ="row custom-hover-topic" style ="height: 150px; width: 100%">
                                                <div class ="col-3 position-relative">
                                                    <img src ="${paper.picture}" class = "position-absolute custom-center" style = "width: 140px">
                                                </div>
                                                <div class ="col-4 position-relative">
                                                    <span class = "h3"> ${paper.title} </span>
                                                    <br>
                                                    ID: ${paper.ID} <br>
                                                    Topic: ${paper.topic}<br>
                                                    Created Date: ${paper.createdDate}<br>
                                                    Last Modified Date: ${paper.modifiedDate}
                                                    <br>
                                                </div>
                                                <div class ="col-4 position-relative">
                                                    ${paper.description}
                                                </div>
                                                <div class ="col-1 h4 position-relative" style = "color:#C6B6C5"> 
                                                    <button type = "submit" class = "btn btn-light border-dark position-absolute custom-center"> <span class = "h5"> Edit </span>  </button>
                                                </div>
                                            </div>

                                        </c:forEach>
                                    </div>
                                </c:if>

                            </div>
                        </div>

                    </div>

                    <div id="article" class ="container tab-pane fade p-0"><br>
                        <div class="row">
                            <div class="col-3">
                                <span class ="h4 d-inline-block position-relative" style = "left: 12px">
                                    Search 
                                </span>
                                <!-- comment -->
                                <form action="">
                                    <div class ="d-flex"> 
                                        <input style = "width: 60%" placeholder = "Keyword" class = "form-control" type = "text" name = "keyword" value = "">
                                        <input type ="image" src ="Image/SearchIcon.png" style = "width: 40px; height: 40px" class = "position-relative ml-2"> 
                                    </div> 
                                </form>
                            </div>
                            <div class="col-9 position-relative">
                                <c:if test="${not empty requestScope.articles}">
                                    <div style = "width: 100%; height: 600px; overflow: auto" class = "position-relative">
                                        <div style = "width: 100%; height: 50px" class = "position-relative row">
                                            <div class ="col-3 h4 position-relative" style = "color:#C6B6C5"> 
                                                Picture
                                            </div>
                                            <div class ="col-4 h4 position-relative" style = "color:#C6B6C5"> 
                                                Information
                                            </div>
                                            <div class ="col-4 h4 position-relative" style = "color:#C6B6C5"> 
                                                Description
                                            </div>
                                            <div class ="col-1 h4 position-relative" style = "color:#C6B6C5"> 
                                                Price
                                            </div>
                                        </div>
                                        <c:forEach items="${requestScope.articles}" var="articles">
                                            <div class ="row custom-hover-topic" style ="height: 150px; width: 100%">
                                                <div class ="col-3 position-relative">
                                                    <img src ="${articles.picture}" class = "position-absolute custom-center" style = "width: 140px">
                                                </div>
                                                <div class ="col-4 position-relative">
                                                    <span class = "h3"> ${articles.title} </span>
                                                    <br>
                                                    ID: ${articles.ID} <br>
                                                    Topic: ${articles.topic}<br>
                                                    Published Date: ${articles.publishedDate}<br>
                                                    <img style="width: 20px; height: 20px" src="Image/HeartIcon.png"> 
                                                    ${articles.totalReaction}
                                                    <img class="ml-4"style="width: 20px; height: 20px" src="Image/DownloadIcon.png"> 
                                                    ${articles.totalDownload}<br>
                                                    <br>

                                                </div>
                                                <div class ="col-4 position-relative">
                                                    ${articles.description}
                                                </div>
                                                <div class ="col-1 position-relative">
                                                    <span class="position-absolute custom-center h5">
                                                        ${articles.price}$
                                                    </span>
                                                </div>
                                            </div> 
                                        </c:forEach>
                                    </div>
                                </c:if>                                 
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <!-- End Section 1 -->
            <jsp:include page="Footer.jsp" />   
        </div>

    </body>
</html>
