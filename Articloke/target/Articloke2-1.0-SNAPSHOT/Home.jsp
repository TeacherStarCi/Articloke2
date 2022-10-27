<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" defer></script>
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS.css"/>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/9689277209.js" crossorigin="anonymous"></script>
        <title>Home</title>
    </head>
    <body>
        
        <div class ="starci-full-container"> 
               <jsp:include page="NavBar.jsp" />
            <section class = "starci-section-container" style ="max-height: 800px; overflow: hidden" >
                <img src="Asset/Image/Application/HomeBackground.gif" class = "img-fluid">
                <div class = "position-absolute starci-center" style = "top:25%"> 
                    <p class ="starci-font-alteration text-center" style = "font-size: 6rem; font-weight: bold"> Articloke</p>
                    <p class = "h4"> The garden where knowledge are planted </p>

                </div>  
            </section>
            <section class = "starci-section-container starci-gradient-background">

                <div class ="container"> 
                    <p class = "h1"> Lasted Article </p>
    
                    <div class ="row starci-section-container m-0 mt-2">

                        <c:forEach begin = "0" end = "2" varStatus = "status">
                            <div class ="col-4 position-relative p-1">
                                <a href = "DisplayArticleServlet?ID=${applicationScope.articlesLatestPublishedDate.get(status.index).ID}" class ="starci-no-hyperlink starci-pointer">
                                    <div class ="starci-hover-container"> 
                                        <img class ="starci-hide-image img-fluid" src ="${applicationScope.articlesLatestPublishedDate.get(status.index).picture}" >
                                        <div class ="starci-dislay-text p-3">
                                            <p class ="h1"> ${applicationScope.articlesLatestPublishedDate.get(status.index).title} </p>
                                            <div> ID: ${applicationScope.articlesLatestPublishedDate.get(status.index).ID}  </div>
                                            <div> Author: ${applicationScope.articlesLatestPublishedDate.get(status.index).username}  </div>
                                            <div> Published Date: ${applicationScope.articlesLatestPublishedDate.get(status.index).publishedDate}  </div>
                                            <div> Author: ${applicationScope.articlesLatestPublishedDate.get(status.index).username}  </div>                                    
                                        </div>
                                    </div>
                                </a>
                            </div>

                        </c:forEach>
                    </div>


                    <div class ="row starci-section-container m-0">
                        <c:forEach begin = "3" end = "6" varStatus = "status" >
                            <div class ="col-3 position-relative p-1">
                                <a href = "DisplayArticleServlet?ID=${applicationScope.articlesLatestPublishedDate.get(status.index).ID}" class ="starci-no-hyperlink starci-pointer">
                                    <div class ="starci-hover-container"> 
                                        <img class ="starci-hide-image img-fluid" src ="${applicationScope.articlesLatestPublishedDate.get(status.index).picture}" >
                                        <div class ="starci-dislay-text p-3">
                                            <p class ="h1"> ${applicationScope.articlesLatestPublishedDate.get(status.index).title} </p>
                                            <div> ID: ${applicationScope.articlesLatestPublishedDate.get(status.index).ID}  </div>
                                            <div> Author: ${applicationScope.articlesLatestPublishedDate.get(status.index).username}  </div>
                                            <div> Published Date: ${applicationScope.articlesLatestPublishedDate.get(status.index).publishedDate}  </div>
                                            <div> Author: ${applicationScope.articlesLatestPublishedDate.get(status.index).username}  </div>                                    
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>  
            <section class = "pt-5">
                <div class ="container">
                      <p class = "h1"> Popular Topics </p>
            
                    <div class ="row starci-section-container m-0" > 
                        <c:forEach items = "${applicationScope.topicsMostCount}" begin = "0" end = "5" step = "2" varStatus = "status" >
                            <div class ="col-4 position-relative">
                                <c:forEach begin = "0" end = "1" varStatus = "status2">
                                   <a class ="starci-no-hyperlink" href = "ForwardHomeTopicSearchServlet?topic=${applicationScope.topicsMostCount.get(status.index + status2.index).topic.topic}"> 
                                    <div class = "p-2 custom-hover-topic shadow starci-hover-light-gray mt-3 starci-rounded">
                                        <img  src = "${applicationScope.topicsMostCount.get(status.index + status2.index).topic.picture}" style = "height: 60px; width: 60px; margin-right: 1rem ">  
                                        <span class = "h3 ml-1">  ${applicationScope.topicsMostCount.get(status.index + status2.index).topic.topic}  </span>
                                        ${applicationScope.topicsMostCount.get(status.index + status2.index).count} article<c:if test = "${applicationScope.topicsMostCount.get(status.index + status2.index).count > 1}">s</c:if>                                      
                                        </div>
                                    </a>  

                                </c:forEach>
                            </div>
                        </c:forEach>
                    </div>
                </div>      
            </section>
              <jsp:include page="Footer.jsp" />
        </div>
    </body>
</html>
