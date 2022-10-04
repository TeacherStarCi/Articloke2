<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SEARCH ARTICLE</title>
        <link rel="stylesheet" href="CSS/Utils.css" />
        <link rel="stylesheet" href="CSS/DivCustom.css" />
        <link rel="stylesheet" href="CSS/Table.css" />
    </head>
    <body>
        <div style = "width: 100%; height: 1850px; top :0; left : 0">

            <form id = "ShowArticleResultServlet" action = "ShowArticleResultServlet"> </form>
            <div style = "width: 100% ;height: 220px; top: 60px; border-bottom: 4px; border-bottom: 2px solid grey">
                <div class ="horizontal-center" style = "top:15px; font-size:40px; font-weight: bold">
                    SEARCH FOR AN ARTICLE
                </div>
                <div style = "left: 20px ; top:80px">

                    Note: If you leave a field blank, mean that you ignore it.
                </div>
                <div style = "left: 20px ;top:120px; font-size: 20px">
                    Keyword &nbsp; <input type ="text" form = "ShowArticleResultServlet" name = "keyword" value = "${requestScope.keyword}" style = "width: 100px">    
                </div>
                <div style = "left: 270px ;top:120px; font-size: 20px">
                    Title &nbsp; <input type ="text" form = "ShowArticleResultServlet" name = "title" value = "${requestScope.title}" style = "width: 100px;margin-left: 44px">  
                </div>
                <div style = "left: 520px ;top:120px; font-size: 20px">
                    Author &nbsp; <input type ="text" form = "ShowArticleResultServlet" name = "author" value = "${requestScope.author}" style = "width: 100px;margin-left: 22px">    
                </div>

                <div style = "left: 20px ;top: 160px; font-size: 20px">
                    Topic &nbsp; <select form = "ShowArticleResultServlet" name = "topic" style = "width: 100px; margin-left: 38px" > 
                        <option value = "All"> All </option>
                        <c:forEach items = "${sessionScope.topics}" var = "topic" >

                            <option value = "${topic.topic}"> ${topic.topic} </option>

                        </c:forEach>





                    </select>    
                </div>

                <div style = "left: 270px ; top:160px; font-size: 20px">
                    Permission &nbsp; <select form = "ShowArticleResultServlet" name ="permission" style ="width: 100px"> <option> Public  </option> 
                        <option value = "All"> All  </option> 
                        <option value = "Public"> Public  </option> 
                        <option value = "For Organization"> For Organization  </option> 
                        <option value = "Private"> Private  </option> 

                    </select>
                </div>
                <div style = "left: 520px ; top:160px; font-size: 20px">
                    Sorted by &nbsp; <select  form = "ShowArticleResultServlet" name ="sortedBy" style = "width: 100px; margin-left: 4px"> <option value = "None"> None </option>
                        <option value = "Alphabet"> Alphabet </option>
                        <option value = "Published Date"> Published Date </option>
                    </select>    
                </div>

                <input type ="hidden" form ="ShowArticleResultServlet" name ="organization" value ="${sessionScope.user.organization}">
                <input form= "ShowArticleResultServlet" style = "right: 145px; top:140px;" type = "submit" name = "action" value = "Search">

                <input  form = "ShowArticleResultServlet" style = "right: 25px; top:140px;" type = "reset" value = "Reset" >
            </div>

            <div style = "width: 1200px ; height: 1310px; top: 385px; border-top: 4px solid black;  border-left: 4px solid black;  border-right: 4px solid black;" class = "horizontal-center">
                <div style ="width: 1200px; height: 50px; top: 0; border-bottom: 2px solid grey">

                    <div style = "left: 50px" class = "vertical-center"> Number of results:

                        <c:if test = "${not empty requestScope.articles}">
                            ${requestScope.articles.size()} 
                        </c:if>
                        <c:if  test = "${empty requestScope.articles}">
                            0
                        </c:if>
                    </div>
                </div>  

                <c:if test = "${not empty requestScope.articles}">
                    <div style ="width: 100%; left : 0; height: 1200px; bottom: 0">
                        <table class = "table table-hover">
                            <thead>
                                <tr>
                                    <th scope="row">ID</th>
                                    <th scope="row" >Picture</th>
                                    <th scope="row">Title</th>
                                    <th scope="row">Author</th>
                                    <th scope="row">Description</th>
                                    <th scope="row">View detail</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach items = "${requestScope.articles}" var = "article" begin = "${requestScope.minIndex}" end = "${requestScope.maxIndex}">
                                    <tr>
                                        <td scope="col" > ${article.ID}</td>
                                        <td  style = "text-align: left; height: 200px; width: 200px;" > 

                                            <img src ="${article.picture}" style = "height: 200px; width: 200px; ">
                                        </td>
                                        <td style = "font-size: 20px; font-weight: bold">  ${article.title}</td>
                                        <td>  ${article.username}</td>
                                        <td> ${article.description}</td>
                                        <td></td>
                                    </tr>
                                </c:forEach> 

                            </tbody>
                        </table>

                    </div>  
                </c:if>
                <div style = "bottom: 0; left: 0; height: 60px; width: 100%; border-top: 2px solid grey">
                    <form id = "MovePageServlet" action = "MovePageServlet"> </form>
                  
                    <input form ="MovePageServlet" type = "hidden" name = "keyword" value = "${requestScope.keyword}">
                    <input form ="MovePageServlet" type = "hidden" name = "title" value = "${requestScope.title}">
                    <input form ="MovePageServlet" type = "hidden" name = "author" value = "${requestScope.author}">
                    <input form ="MovePageServlet" type = "hidden" name = "topic" value = "${requestScope.topic}">
                    <input form ="MovePageServlet" type = "hidden" name = "organization" value = "${sessionScope.user.organization}">
                    <input form ="MovePageServlet" type = "hidden" name = "permission" value = "${requestScope.permission}">
                    <input form ="MovePageServlet" type = "hidden" name = "sortedBy" value = "${requestScope.sortedBy}">
                    <input form ="MovePageServlet" type = "hidden" name = "currentPage" value = "${requestScope.currentPage}">
                    <input form ="MovePageServlet"type = "hidden" name = "minIndex" value = "${requestScope.minIndex}">
                    <input form ="MovePageServlet" type = "hidden" name = "maxIndex" value = "${requestScope.maxIndex}">
                    <input form ="MovePageServlet" type = "hidden" name = "maxPage" value = "${requestScope.maxPage}">

                    <c:if test="${requestScope.currentPage > 1}" >
                        <input form ="MovePageServlet" class ="center smaller" style ="left: calc(50% - 150px)" type = "submit" name ="action" value = "Previous">
                    </c:if>
                    <div style = "font-size: 20px" class = "center">
                        Page 
                        <c:if test = "${not empty requestScope.currentPage}">
                            ${requestScope.currentPage}     
                        </c:if>
                        <c:if test = "${empty requestScope.currentPage}">
                            1
                        </c:if>
                        of 
                        <c:if test = "${not empty requestScope.maxPage}">
                            ${requestScope.maxPage}     
                        </c:if>
                        <c:if test = "${empty requestScope.maxPage}">
                            1
                        </c:if>

                    </div>
                    <c:if test="${requestScope.currentPage < requestScope.maxPage}" >
                        <input form ="MovePageServlet" class ="center smaller" style ="left: calc(50% + 150px)" type = "submit" name ="action" value = "Next">   
                    </c:if>
                </div>
            </div>   

            <jsp:include page="Footer.jsp" />
            <jsp:include page="Navigation.jsp" />    
        </div>
    </body>
</html>
