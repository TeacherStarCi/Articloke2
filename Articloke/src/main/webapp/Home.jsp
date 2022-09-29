<%-- 
    Document   : Home
    Created on : 27-Sep-2022, 14:49:53
    Author     : tucuo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Articloke</title>
           <link rel="stylesheet" href="CSS/Utils2.css" />
              <link rel="stylesheet" href="Asset/css/DivCustom.css" />
                 <link rel="stylesheet" href="Asset/css/.css" />
    </head>
    <body>
        <div style = "width: 100%; height: 2960px; top: 0; right: 0">
            <div style = "width: 100%; height: 300px; top: 60px;">
                  <img style = "width: 100%; height: 200px; top: 0; left:0"> 
                 <div class = "horizontal-center " style = "top: 100px; width: 800px; height: 200px; right: calc(50%-400px); border: 2px solid;  background-color:#D5E6BD;">
                     <div class =" hover-green-div" style = "left:0;top:0;height:200px;width:400px;">
                         
                        <img style = "height: 60px; width: 60px; top: 30px; left:30px" src = "Image/Home/read.png">
                        <div class = "large" style ="top:30px;left: 120px; font-size: 24px; font-weight: bold"> FIND ARTICLES
                        </div>
                        <div style = "top:110px; left: 30px; max-width: 300px"> ARTICLOKE will finds the most relevant articles as you expected.</div>

                     </div>
                     <div class =" hover-green-div" style = "right:0;top:0;height:200px;width:400px;">
                         <img style = "height: 60px; width: 60px; top: 30px; left:30px" src = "Image/Home/upload.png">
                        <div class = "large" style ="top:30px;left: 120px; font-size: 24px; font-weight: bold"> SUBMIT YOUR PAPER
                        </div>
                        <div style = "top:110px; left: 30px;  max-width: 300px"> ARTICLOKE editors will receive your efforts, then publish it.</div>
                         
                         
                         
                     </div>
                
                 
                 
                 
                 </div>
                
            </div>
            
            <div  class ="horizontal-center" style = "top: 400px; width: 1200px; height: 120px">
                <div class ="horizontal-center no-break" style = "top:10px;font-size : 40px"> VISION, KNOWLEDGE and PERCEIVE</div>
                <div class = "horizontal-center no-break" style = "top: 65px"> These are the 3 principals that every article in Articloke must have. </div>
                <div class = "horizontal-center no-break" style ="top: 90px"> We are introducing several of them below.</div>
                
                                        
            </div>
                   
            
            <div class = "horizontal-center" style = "top: 550px; width: 1200px; height: 840px">
                <div  style = "width: 100%; font-size: 24px; font-weight: bold; top: 0; left: 0; height: 40px; border-bottom: 2px solid grey">
                    <div class = "vertical-center" style = "left: 30px; font-size: 24px">
                      Latest  
                    </div>
                    <div style = "top: 14px; right: 30px; font-size: 16px">
                    Read more
                </div>
                </div>
              
                <div  style = "top: 40px; width: 1200px; height: 800px; left: 0">
                     <div  style = "top: 10px; width: 780px; left: 10px; height: 780px; border: 2px solid grey">
                      
                       <img style = "top:0;left:0; width: 100%; height: 100%" src="${sessionScope.articles_byDate.get(0).picture}">
                         
                </div>
                     <div  style = "top: 10px; width: 380px; right: 10px; height: 380px; border: 2px solid grey">
                      <img style = "top:0;left:0; width: 100%; height: 100%" src="${sessionScope.articles_byDate.get(1).picture}">
                         
                </div>
                     <div  style = "top: 410px; width: 380px; right: 10px; height: 380px; border: 2px solid grey">
                     <img style = "top:0;left:0; width: 100%; height: 100%" src="${sessionScope.articles_byDate.get(2).picture}">
                         
                </div>
                </div>
            </div>
            
              <div class = "horizontal-center" style = "top: 1450px; width: 1200px; height: 840px">
                <div  style = "width: 100%; font-size: 24px; font-weight: bold; top: 0; left: 0; height: 40px; border-bottom: 2px solid grey">
                    <div class = "vertical-center" style = "left: 30px; font-size: 24px">
                      Popular 
                    </div>
                    <div style = "top: 14px; right: 30px; font-size: 16px">
                    Read more
                </div>
                </div>
              
                <div  style = "top: 40px; width: 1200px; height: 800px; left: 0">
                     <div  style = "top: 10px; width: 780px; left: 10px; height: 780px; border: 2px solid grey">
                     <img style = "top:0;left:0; width: 100%; height: 100%" src="${sessionScope.articles_byReaction.get(0).article.picture}"> 
                </div>
                     <div  style = "top: 10px; width: 380px; right: 10px; height: 380px; border: 2px solid grey">
                <img style = "top:0;left:0; width: 100%; height: 100%" src="${sessionScope.articles_byReaction.get(1).article.picture}">
                </div>
                     <div  style = "top: 410px; width: 380px; right: 10px; height: 380px; border: 2px solid grey">
                   <img style = "top:0;left:0; width: 100%; height: 100%" src="${sessionScope.articles_byReaction.get(2).article.picture}">
                </div>
            </div>
          </div>
                
                
            <div class = "horizontal-center" style = "top: 2380px; width: 1200px; height: 350px; border: 5px solid">
                <div style = "left: 0; right: 0; width: 100%; height: 40px"> 
                    <div class = "horizontal-center" style = "top: 20px; font-size: 32px; font-weight: bold"> Enthusiastic Topic</div>
                </div>
                
                  <div  style = "width: 400px; font-size: 20px; top: 90px; left: 100px; height: 60px;">
                     <img style = "top:10px;left:10px; width: 40px; height: 40px" src="${sessionScope.topics_byCount.get(0).topic.picture}">
                     <div class = "vertical-center" style = "left: 70px;font-size: 24px"> ${sessionScope.topics_byCount.get(0).topic.topic} </div>
                     <div class = "" style = "bottom: 12px; right:30px"> ${sessionScope.topics_byCount.get(0).count} articles</div>
                  
                  </div> 
                <div  style = "width: 400px; font-size: 20px; top: 90px; right: 100px; height: 60px;">
                      <img style = "top:10px;left:10px; width: 40px; height: 40px" src="${sessionScope.topics_byCount.get(1).topic.picture}">
                     <div class = "vertical-center" style = "left: 70px;font-size: 24px"> ${sessionScope.topics_byCount.get(1).topic.topic} </div>
                <div class = "" style = "bottom: 12px; right:30px"> ${sessionScope.topics_byCount.get(1).count} articles</div>
                </div> 
                 <div  style = "width: 400px; font-size: 20px; top: 170px; left: 100px; height: 60px;">
                   <img style = "top:10px;left:10px; width: 40px; height: 40px" src="${sessionScope.topics_byCount.get(2).topic.picture}">
                     <div class = "vertical-center" style = "left: 70px;font-size: 24px"> ${sessionScope.topics_byCount.get(2).topic.topic} </div>
                <div class = "" style = "bottom: 12px; right:30px"> ${sessionScope.topics_byCount.get(2).count} articles</div>
                 </div> 
                 <div  style = "width: 400px; font-size: 20px; top: 170px; right: 100px; height: 60px;">
                       <img style = "top:10px;left:10px; width: 40px; height: 40px" src="${sessionScope.topics_byCount.get(3).topic.picture}">
                     <div class = "vertical-center" style = "left: 70px;font-size: 24px"> ${sessionScope.topics_byCount.get(3).topic.topic} </div>
                 <div class = "" style = "bottom: 12px; right:30px"> ${sessionScope.topics_byCount.get(3).count} articles</div>
                 </div> 
                 <div  style = "width: 400px; font-size: 20px; top: 250px; left: 100px; height: 60px;">
                    <img style = "top:10px;left:10px; width: 40px; height: 40px" src="${sessionScope.topics_byCount.get(4).topic.picture}">
                     <div class = "vertical-center" style = "left: 70px;font-size: 24px"> ${sessionScope.topics_byCount.get(4).topic.topic} </div>
                  <div class = "" style = "bottom: 12px; right:30px"> ${sessionScope.topics_byCount.get(4).count} articles</div>
                 </div> 
                 <div  style = "width: 400px; font-size: 20px; top: 250px; right: 100px; height: 60px;">
                       <img style = "top:10px;left:10px; width: 40px; height: 40px" src="${sessionScope.topics_byCount.get(5).topic.picture}">
                       <div class = "vertical-center" style = "left: 70px;font-size: 24px"> ${sessionScope.topics_byCount.get(5).topic.topic} </div>
                      <div class = "" style = "bottom: 12px; right:30px"> ${sessionScope.topics_byCount.get(5).count} articles</div>
                 </div> 
                 
             
            </div>
                
            <jsp:include page="Footer.jsp" />
        <jsp:include page="Navigation.jsp" />
       </div> 
    </body>
</html>
