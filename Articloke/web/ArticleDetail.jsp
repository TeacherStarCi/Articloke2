<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ARTICLE DETAIL</title>
          <link rel="stylesheet" href="Asset/css/Custom.css" />
        <link rel="stylesheet" href="Asset/css/Navigation.css" />
        <link rel="stylesheet" href="Asset/css/Footer.css" />
        <link rel="stylesheet" href="Asset/css/ArticleDetail.css" />
    </head>
    <body>
        <div class = "ArticleDetail">
        
            <div class = "ArticleContent">
                <div class ="extreme-large" style = "position:absolute; top:30px; left: 50%; transform: translate(-50%,0%)">
                TEST${requestScope.article.title}
                </div >
                <img style = "position:absolute; height: 500px; width: 1000px ;top:80px; left: 50%; transform: translate(-50%,0%)" src = "Asset/img/Home/read.png${requestScope.article.picuture}">
                <div style = "position:absolute; text-align: justify; width: 1000px; position:absolute; top:600px; left: 50%; transform: translate(-50%,0%)">
               7823455808
               4696576349    
               <div class = "ArticleContent-Interaction">
                   
               </div>
               <div class = "ArticleContent-Purchase">
                 <div class ="ArticleContent-Purchase-Left"
                      
                      <div/>
                 <div class ="ArticleContent-Purchase-Right"
                      
                      <div/>
               </div>
               
1465403354
5084614308
0382472899
3839116558
6963965238
4533618556
2771136096
5612021350
9565291596
6391441960
5571860933
5543646175
0108903274
8361387882
3169899972
3797680971
2097851184
8823691928
7074024641
8958572637
0043225582
6834868768
2695583402
5647704635
0425019781
2540602826
7134486935
1373016574
6703787940
7483740531
7160169490
3569960144
9771810792
6750548956
0720003809
8511559552
3060660855
1206398053
5351610018
5225573453
3961307983
7458751897
4954241773${requestScope.article.description}
                </div >
            </div>
            
            
            
            
            
            
            
            
            
            
            
            
            
        
        <div class = "Footer">
                <div class = "Footer-Left">
                    <div class = "Footer-Left-Logo">
                        <img style = "width: 60px; height: 60px; top:20px; left: 20px; position: absolute" src="Asset/img/NavigationFooter/Logo.png">
                        <div style ="font-size: 20px; top: 90px; left: 5px; position: absolute"> 𝔸𝕣𝕥𝕚𝕔𝕝𝕠𝕜𝕖
                        </div>
                    </div>
                    <div class = "Footer-Left-Copyright">
                        <div style = "max-width: 180px; left: 20px; top: 20px; position: absolute;">   Copyright © 2022 StarCi da Philospher
                            <br>
                            Cookies are used by this site.
                        </div> 
                    </div>
                    <div class = "Footer-Left-Contact">
                        <div style = "top:20px; left:10px; max-width:280px; position: absolute;">
                            PHONE NUMBER: 0828.678.897 
                            <br>
                            EMAIL: cuongnvtse160875@fpt.edu.vn
                            <br>
                            ADDRESS: 53 Tan Lap 1, Hiep Phu, 9 District, Ho Chi Minh
                            <br>

                        </div>
                    </div>
                </div>
                <div class = "Footer-Right">
                    <div class = "Footer-Right-Social">
                        <div class ="large" style = "top: 20px; left: 50px; position: absolute" >
                            Our Social Media
                            </div>
                            <img style = "left: calc(50% - 20px)   ;top:60px; height: 40px; width: 40px; position: absolute" src = "Asset/img/NavigationFooter/facebook@2x.png">
                            <img style = "left: calc(25% - 20px);  top:60px; height: 40px; width: 40px; position: absolute" src = "Asset/img/NavigationFooter/instagram@2x.png">
                            <img style = "left: calc(75% - 20px); top:62px; height: 36px; width: 40px; position: absolute" src = "Asset/img/NavigationFooter/tweeter@2x.png">
                        </div>
                    </div>
                    <div class = "Footer-Right-Sponsor">
                        <div class ="large" style = "top: 20px; position: absolute" >
                            Sponsor
                            </div>
                         <img style = "left: calc(50% - 20px)   ;top:60px; height: 40px; width: 40px; position: absolute" src = "Asset/img/NavigationFooter/sponsorlogo@2x.png">
                    </div>
                </div>


           
            <div class = "Navigation">
                <div class = "Navigation-Left">
                    <div class = "Navigation-Left-Logo">
                        <img class ="center" style = "height:50px;width:50px"
                             src = "Asset/img/NavigationFooter/Logo.png">

                    </div> 
                    <div class = " Navigation-Left-Title">
                        <div style ="font-size:32px" class = "center"  > 𝔸𝕣𝕥𝕚𝕔𝕝𝕠𝕜𝕖 </div>
                    </div> 

                </div>
                <div class = "Navigation-Right" style = "display:flex">
                    <a href = "Home.jsp">
                        <div class = "Navigation-Right-Home hover">
                            <div class ="center large"> Home
                            </div> 
                        </div>
                    </a>
                    <a href = "">
                        <div class = "Navigation-Right-Contact hover">

                            <div class ="center large"> Contact
                            </div>
                        </div> 
                    </a>
                    <a href = "">
                        <div class = "Navigation-Right-Article hover">

                            <div class ="center large"> Article
                            </div>
                        </div> 
                    </a>
                    <a href = "Search.jsp">
                        <div class = "Navigation-Right-Search hover">
                            <div class ="center"> 
                                <img style ="height: 40px; width: 40px;" src = "Asset/img/NavigationFooter/Search.png">
                            </div>
                        </div> 
                    </a>
                    <c:if test = "${empty sessionScope.user}">
                        <a href = "Auth.jsp" >
                            <div class = "Navigation-Right-Profile hover">


                                <div class ="center"> 
                                    <img style ="height: 40px; width: 40px;" src = "Asset/img/NavigationFooter/User.png">
                                </div>
                            </div> 
                        </a>
                    </c:if>
                    <c:if test = "${not empty sessionScope.user}">
                        <a href = "Profile.jsp" >
                            <div class = "Navigation-Right-Profile hover">
                                <div class ="center"> 
                                    <img style ="height: 40px; width: 40px;" src = "${sessionScope.user.picture}">
                                </div>
                            </div> 
                        </a>
                    </c:if>
                </div>
            </div>
            </div>
    </body>
</html>
