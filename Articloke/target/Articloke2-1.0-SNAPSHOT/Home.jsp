<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="CSS/Bootstrap4.css">
        <link rel="stylesheet" href="CSS/Custom.css">
    </head>
    <body>
        <div class ="container-fluid position-absolute p-0" style = "min-height: 100%">
              <jsp:include page="Navigation_B.jsp" /> 
            <div class ="container-fluid position-relative p-0" style = "width: 100%; height: 600px;overflow:hidden;">
                <img class ="position-absolute" src = "Image/Art.gif" style = "width: 100%">
                <div class = "position-absolute custom-center text-center">
                    <span style = "font-size: 7.5rem; font-weight: bolder; font-family: cursive"> Articloke </span> <br>
                            <span class ="h5" style = "font-family: cursive"> The garden where knowledge are planted </span> <br><br>
                     
                </div>
            </div>
            <div class = "container-fluid position-relative p-0" style = "background:linear-gradient(180deg, rgba(198,182,197,1) 30%, rgba(255,255,255,1) 100%);">
             <div class ="container position-relative" style = "width: 100%">
                 <span class = "h3"> Latest Articles</span>
                 <div class ="custom-horizontal-line"> </div>
                 <div class ="row position-relative mt-4" >
                     
                     
                     <div class ="col-4 position-relative p-1">
                        
                          <div class = "custom-hover-container">
                                         <img class = "position-relative img-fluid custom-hover-hide-image" src = "${sessionScope.articles_byDate.get(0).picture}">
                                            <div class = "custom-hover-dislay-text">
                                                <div class = "px-5 pb-5">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(0).title} </span> <br>
                                                     Author: ${sessionScope.articles_byDate.get(0).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                         
                         
                         
                     </div>
                     <div class ="col-4 position-relative p-1">
                       <div class = "custom-hover-container">
                                         <img class = "position-relative img-fluid custom-hover-hide-image" src = "${sessionScope.articles_byDate.get(1).picture}">
                                            <div class = "custom-hover-dislay-text">
                                                <div class = "px-5 pb-5">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(1).title} </span> <br>
                                                     Author: ${sessionScope.articles_byDate.get(1).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                     </div>
                     <div class ="col-4 position-relative p-1">
                       <div class = "custom-hover-container">
                                         <img class = "position-relative img-fluid custom-hover-hide-image" src = "${sessionScope.articles_byDate.get(2).picture}">
                                            <div class = "custom-hover-dislay-text">
                                                <div class = "px-5 pb-5">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(2).title} </span> <br>
                                                     Author: ${sessionScope.articles_byDate.get(2).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                     </div>
                 </div>
                 <div class ="row position-relative">
                     <div class ="col-3 p-1 position-relative">
                          <div class = "custom-hover-container">
                                         <img class = "position-relative img-fluid custom-hover-hide-image" src = "${sessionScope.articles_byDate.get(3).picture}">
                                            <div class = "custom-hover-dislay-text">
                                                <div class = "px-3 pb-3">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(3).title} </span> <br>
                                                     Author: ${sessionScope.articles_byDate.get(3).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                         
                     </div>
                     <div class ="col-3 p-1 position-relative">
                          <div class = "custom-hover-container">
                                         <img class = "position-relative img-fluid custom-hover-hide-image" src = "${sessionScope.articles_byDate.get(4).picture}">
                                            <div class = "custom-hover-dislay-text">
                                                <div class = "px-3 pb-3">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(4).title} </span> <br>
                                                     Author: ${sessionScope.articles_byDate.get(4).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                     </div>
                     <div class ="col-3 p-1 position-relative">
                          <div class = "custom-hover-container">
                                         <img class = "position-relative img-fluid custom-hover-hide-image" src = "${sessionScope.articles_byDate.get(5).picture}">
                                            <div class = "custom-hover-dislay-text">
                                                <div class = "px-3 pb-3">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(5).title} </span> <br>
                                                     Author: ${sessionScope.articles_byDate.get(5).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                     </div>
                     <div class ="col-3 p-1 position-relative">
                         <div class = "custom-hover-container">
                                         <img class = "position-relative img-fluid custom-hover-hide-image" src = "${sessionScope.articles_byDate.get(6).picture}">
                                            <div class = "custom-hover-dislay-text">
                                                <div class = "px-3 pb-3">
                                                    <span class = "h5"> ${sessionScope.articles_byDate.get(6).title} </span> <br>
                                                     Author: ${sessionScope.articles_byDate.get(6).username}
                                                    
                                                </div>
                                            </div>
                                        </div>
                     </div>
                 </div>
            </div>
                                                     <div class = "container position-relative mt-3">
                                                     <span class = "h3"> Popular Topics</span>
                 <div class ="custom-horizontal-line"> </div>
                 <div class ="row">
                 <div class ="col-4">
                    <div class = "mt-5 p-2 " style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                 
                        <img  src = "${sessionScope.topics_byCount.get(0).topic.picture}" style = "height: 60px; width: 60px " class = "mr-2 d-inline-block">  
                                               
                        <div class = "d-inline-block position-relative" style ="top: 10px" ><span class = "h3 ml-1 position-relative d-inline-block">  ${sessionScope.topics_byCount.get(0).topic.topic}  </span>
                                    
                                         ${sessionScope.topics_byCount.get(0).count} article<c:if test = "${sessionScope.topics_byCount.get(0).count > 1}">s</c:if> </div>
                        </div>
                        
                        <div class = "mt-5 p-2 " style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                 
                        <img  src = "${sessionScope.topics_byCount.get(3).topic.picture}" style = "height: 60px; width: 60px " class = "mr-2 d-inline-block">  
                                               
                        <div class = "d-inline-block position-relative" style ="top: 10px" ><span class = "h3 ml-1 position-relative d-inline-block">  ${sessionScope.topics_byCount.get(3).topic.topic}  </span>
                                    
                                         ${sessionScope.topics_byCount.get(3).count} article<c:if test = "${sessionScope.topics_byCount.get(3).count > 1}">s</c:if> </div>
                        </div>
                    </div>
                 
                 
            
                  <div class ="col-4"> 
                     <div class = "mt-5 p-2 " style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                 
                        <img  src = "${sessionScope.topics_byCount.get(1).topic.picture}" style = "height: 60px; width: 60px " class = "mr-2 d-inline-block">  
                                               
                        <div class = "d-inline-block position-relative" style ="top: 10px" ><span class = "h3 ml-1 position-relative d-inline-block">  ${sessionScope.topics_byCount.get(1).topic.topic}  </span>
                                    
                                         ${sessionScope.topics_byCount.get(1).count} article<c:if test = "${sessionScope.topics_byCount.get(1).count > 1}">s</c:if> </div>
                        </div>
                           <div class = "mt-5 p-2 " style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                 
                        <img  src = "${sessionScope.topics_byCount.get(4).topic.picture}" style = "height: 60px; width: 60px " class = "mr-2 d-inline-block">  
                                               
                        <div class = "d-inline-block position-relative" style ="top: 10px" ><span class = "h3 ml-1 position-relative d-inline-block">  ${sessionScope.topics_byCount.get(4).topic.topic}  </span>
                                    
                                         ${sessionScope.topics_byCount.get(4).count} article<c:if test = "${sessionScope.topics_byCount.get(4).count > 1}">s</c:if> </div>
                        </div>
                  
                  
                  
                  
                  </div>
                        <div class ="col-4">
                             <div class = "mt-5 p-2 " style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                 
                        <img  src = "${sessionScope.topics_byCount.get(2).topic.picture}" style = "height: 60px; width: 60px " class = "mr-2 d-inline-block">  
                                               
                        <div class = "d-inline-block position-relative" style ="top: 10px" ><span class = "h3 ml-1 position-relative d-inline-block">  ${sessionScope.topics_byCount.get(2).topic.topic}  </span>
                                    
                                         ${sessionScope.topics_byCount.get(2).count} article<c:if test = "${sessionScope.topics_byCount.get(2).count > 3}">s</c:if> </div>
                        </div>
                            <div class = "mt-5 p-2 " style = " border: 2px solid; border-radius: 15px; box-shadow: 2px 2px 1px 1px black">
                 
                        <img  src = "${sessionScope.topics_byCount.get(5).topic.picture}" style = "height: 60px; width: 60px " class = "mr-2 d-inline-block">  
                                               
                        <div class = "d-inline-block position-relative" style ="top: 10px" ><span class = "h3 ml-1 position-relative d-inline-block">  ${sessionScope.topics_byCount.get(5).topic.topic}  </span>
                                    
                                         ${sessionScope.topics_byCount.get(5).count} article<c:if test = "${sessionScope.topics_byCount.get(5).count > 3}">s</c:if> </div>
                        </div> 
                            
                        
                        </div>
                 </div>
                  
                 
                                                     </div>                                       
                                                     
                                                     
                                                     
                                                     
                                                     
                                                 
            </div>                                          
                                                     
               <jsp:include page="Footer.jsp" />                                            
        </div>
    </body>
</html>
