<%-- 
    Document   : Home_B
    Created on : 03-Oct-2022, 15:30:23
    Author     : tucuo
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/Bootstrap4.css">
        <link rel="stylesheet" href="CSS/Hover.css">
    </head>
    <body>

        <div class ="container-fluid position-relative" style = " padding: 0" >

            <jsp:include page="Navigation_B.jsp" />
            <div class = "container-fluid position-relative" style = "height: 600px; padding: 0" >    
                <img src ="Image/Art.gif" style = "position: absolute; width: 100%;">
                <div class = "position-absolute" style = " top: 10%; left: 50%; transform: translate(-50%,0);text-align: center ">
                    <span style = "font-size:8rem; font-weight: bolder;font-family: cursive">  Articloke</span>
                    <br> <span class ="h5" style = "font-family: cursive;"> The garden that plants lots of knowledge.
                    </span>     
                </div>
                <div class ="position-absolute h5" style = "top: 55%; left: 50%; transform: translate(-50%,0)">
                    <div class = "position-relative" style = "left: 50%; transform: translate(-50%,0)"> Looking for an article? Just give us a keyword </div> 
                    <div class ="d-inline-block mt-2 position-relative" style = "left: 50%; transform: translate(-50%,0)">
                        <div class ="d-flex">
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Keyword" size = "37" >
                            <button type ="submit" class ="btn btn-light ml-2" > <span class = "h5"> Find </span> </button>

                        </div>  

                    </div>
                </div>
            </div>
            <div class = "container-fluid mt-5 position-relative" style = "height: 600px; background: linear-gradient(180deg, #C6B6C5 5%, rgba(255,255,255,1) 100%); top: -30%">

                <span class ="h1" style = "font-weight: bold"> Articles </span>
                <div class = "row">
                    <div class = "col-6 mt-3"> 
                        <span class = "h4"> Recently </span> 

                        <div class = "mb-2"style ="padding: 1px; background: black">

                        </div>
                        <div class ="row">
                           
                                    <div class ="col-8">
                                        <div class = "hover-space">
                                            <img src ="${sessionScope.articles_byDate.get(0).picture}" class = "position-relative img-thumbnail image" style ="width: 100%">
                                            <div class = "text">
                                                <div class = "px-5 pb-5">
                                                    <span class = "h4"> ${sessionScope.articles_byDate.get(0).title} </span> <br>
                                                     Author: ${sessionScope.articles_byDate.get(0).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class ="col-4">
                                        <div class = "hover-space" style ="margin-bottom: 30px" >
                                            <img src ="${sessionScope.articles_byDate.get(1).picture}" class = "position-relative img-thumbnail image" style ="width: 100%">
                                            <div class = "text">
                                                <div class = "px-3 pb-3">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(1).title} </span> <br>
                                                    Author: ${sessionScope.articles_byDate.get(1).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "hover-space">
                                            <img src ="${sessionScope.articles_byDate.get(2).picture}" class = "position-relative img-thumbnail image" style ="width: 100%">
                                            <div class = "text">
                                                <div class = "px-3 pb-3">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(2).title} </span> <br>
                                                    Author: ${sessionScope.articles_byDate.get(2).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    
                                    
                                    
                                    
                            </div>
                            <div class = "col-6 mt-3">
                                <span class = "h4">  Latest  </span>
                                

                                <div class = "mb-2"style ="padding: 1px; background: black">

                                </div>
                                <div class ="row">
                                    <div class ="col-8">
                                        <div class = "hover-space">
                                            <img src ="${sessionScope.articles_byReaction.get(0).article.picture}" class = "position-relative img-thumbnail image" style ="width: 100%">
                                            <div class = "text">
                                                <div class = "px-5 pb-5">
                                                    <span class = "h4"> ${sessionScope.articles_byReaction.get(0).article.title} </span> <br>
                                                    Author: ${sessionScope.articles_byReaction.get(0).article.username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class ="col-4">
                                        <div class = "hover-space" style ="margin-bottom: 30px" >
                                            <img src ="${sessionScope.articles_byReaction.get(1).article.picture}" class = "position-relative img-thumbnail image" style ="width: 100%">
                                            <div class = "text">
                                                <div class = "px-3 pb-3">
                                                    <span class = "h5"> ${sessionScope.articles_byReaction.get(1).article.title} </span> <br>
                                                    Author: ${sessionScope.articles_byReaction.get(1).article.username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "hover-space">
                                            <img src ="${sessionScope.articles_byReaction.get(2).article.picture}" class = "position-relative img-thumbnail image" style ="width: 100%">
                                            <div class = "text">
                                                <div class = "px-3 pb-3">
                                                    <span class = "h5"> ${sessionScope.articles_byReaction.get(2).article.title} </span> <br>
                                                    Author: ${sessionScope.articles_byReaction.get(2).article.username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div class = "container-fluid mt-5" style = "height: 1000px">
                        <div class ="row">
                            <div class ="col-6">
                                <span class ="h1" style = "font-weight: bold"> Topic </span>
                                <div class = "row ">
                                    <div class ="col-4">
                                        <div class = "mt-5 p-2" style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                                        <img  src = "${sessionScope.topics_byCount.get(0).topic.picture}" style = "height: 40px; width: 40px " class = "mr-2">  
                                               
                                        <div class = "h4">  ${sessionScope.topics_byCount.get(0).topic.topic}  </div>
                                        <div class = "h6"> ${sessionScope.topics_byCount.get(0).count} article<c:if test = "${sessionScope.topics_byCount.get(0).count > 1}">s</c:if> </div>
                                        </div>
                                        
                                         <div class = "mt-5 p-2" style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                                        <img  src = "${sessionScope.topics_byCount.get(3).topic.picture}" style = "height: 40px; width: 40px " class = "mr-2">  
                                               
                                        <div class = "h4">  ${sessionScope.topics_byCount.get(3).topic.topic}  </div>
                                        <div class = "h6"> ${sessionScope.topics_byCount.get(3).count} article<c:if test = "${sessionScope.topics_byCount.get(3).count > 1}">s</c:if> </div>
                                        </div>
                                                    
                                    </div>
                                    <div class ="col-4">
                                       <div class = "mt-5 p-2" style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                                        <img  src = "${sessionScope.topics_byCount.get(1).topic.picture}" style = "height: 40px; width: 40px " class = "mr-2">  
                                               
                                        <div class = "h4">  ${sessionScope.topics_byCount.get(1).topic.topic}  </div>
                                        <div class = "h6"> ${sessionScope.topics_byCount.get(1).count} 
                                            article<c:if test = "${sessionScope.topics_byCount.get(1).count > 1}">s</c:if> </div>
                                        </div>
                                        
                                           <div class = "mt-5 p-2" style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                                        <img  src = "${sessionScope.topics_byCount.get(4).topic.picture}" style = "height: 40px; width: 40px " class = "mr-2">  
                                               
                                        <div class = "h4">  ${sessionScope.topics_byCount.get(4).topic.topic}  </div>
                                        <div class = "h6"> ${sessionScope.topics_byCount.get(4).count} article<c:if test = "${sessionScope.topics_byCount.get(4).count > 1}">s</c:if> </div>
                                        </div>
                                                    
                                    </div>

                                        <div class ="col-4">
                                            <div class = "mt-5 p-2" style = "border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                                        <img  src = "${sessionScope.topics_byCount.get(2).topic.picture}" style = "height: 40px; width: 40px" class = "mr-2">  
                                               
                                        <div class = "h4">  ${sessionScope.topics_byCount.get(2).topic.topic}  </div>
                                        <div class = "h6"> ${sessionScope.topics_byCount.get(2).count} article<c:if test = "${sessionScope.topics_byCount.get(2).count > 1}">s</c:if> </div>
                                        </div>
                                            
                                               <div class = "mt-5 p-2" style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                                        <img  src = "${sessionScope.topics_byCount.get(5).topic.picture}" style = "height: 40px; width: 40px " class = "mr-2">  
                                               
                                        <div class = "h4">  ${sessionScope.topics_byCount.get(5).topic.topic}  </div>
                                        <div class = "h6"> ${sessionScope.topics_byCount.get(5).count} article<c:if test = "${sessionScope.topics_byCount.get(5).count > 1}">s</c:if> </div>
                                        </div>
                                                    
                                        </div>
                                </div>
                            </div>
                            <div class ="col-6">
                                <span class ="h1" style = "font-weight: bold"> Influencers </span>
                                <div class = "row">
                                    <div class ="col-4">
                                        Mathematics
                                    </div>
                                    <div class ="col-4">
                                        Physics
                                    </div>

                                    <div class ="col-4"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </body>
                </html>
