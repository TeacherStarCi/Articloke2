<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>YOUR PROFILE</title>
          <link rel="stylesheet" href="CSS/Utils.css" />
          <link rel="stylesheet" href="CSS/DivCustom.css" />
    </head>
    <body>
        <div style ="width: 100%; height: 1210px; top:0;left:0">
            <div style = "width: 350px; height: 800px; top: 160px; left: 100px; border: 2px black solid"> 
                <img class = "horizontal-center" style = "height: 180px; width: 180px; top: 50px; border-radius: 90px" src = "${sessionScope.user.picture}">
                  <div class = "horizontal-center" style = "height: 60px; top: 250px; font-size: 20px">
                    @${requestScope.user.username}
                </div>
             
                <div  class = "horizontal-center" style = "height: 40px;  top: 320px; font-size: 32px">
                 fsdf  ${requestScope.user.firstName} ${requestScope.user.lastName}
                </div>
            
                  <div class = "horizontal-center no-break" style = "height: 40px; top: 370px; font-size: 20px">
                    Articloke Pendals : ${requestScope.artichoke} <img style ="display:inline; width: 28px; height: 28px; margin-left: 10px" src = "Image/Flower.png">
                </div>
                  <div  class = "horizontal-center" style = "height: 40px;  top: 580px; font-size: 20px">
                 DOB : ${requestScope.user.DOB}
                </div>
                <div  class = "horizontal-center" style = "height: 40px;  top: 620px; font-size: 20px">
                 Address : ${requestScope.user.address} ${requestScope.user.lastName}
                </div> 
                <div  class = "horizontal-center" style = "height: 40px;  top: 660px; font-size: 20px">
                 Organization : ${requestScope.user.organization} ${requestScope.user.lastName}
                </div>
                 <div  class = "horizontal-center" style = "height: 40px;  top: 700px; font-size: 20px">
                 Phone Number : ${requestScope.user.phoneNumber} ${requestScope.user.lastName}
                </div>
                 <div  class = "horizontal-center" style = "height: 40px;  top: 740px; font-size: 20px">
                 Role : ${requestScope.user.role} ${requestScope.user.lastName}
                </div>
                
            </div>
              
            
            
            <div style = "width: 850px; height: 700px; top: 210px; right: 100px; border: 2px black solid">
               <! ========================  
    Syed Sahar Ali Raza   	 
  ========================	!>
<div id="generic_price_table">   
<section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <!--PRICE HEADING START-->
                    <div class="price-heading clearfix">
                        <h1>Bootstrap Pricing Table</h1>
                    </div>
                    <!--//PRICE HEADING END-->
                </div>
            </div>
        </div>
        <div class="container">
            
            <!--BLOCK ROW START-->
            <div class="row">
                <div class="col-md-4">
                
                	<!--PRICE CONTENT START-->
                    <div class="generic_content clearfix">
                        
                        <!--HEAD PRICE DETAIL START-->
                        <div class="generic_head_price clearfix">
                        
                            <!--HEAD CONTENT START-->
                            <div class="generic_head_content clearfix">
                            
                            	<!--HEAD START-->
                                <div class="head_bg"></div>
                                <div class="head">
                                    <span>Basic</span>
                                </div>
                                <!--//HEAD END-->
                                
                            </div>
                            <!--//HEAD CONTENT END-->
                            
                            <!--PRICE START-->
                            <div class="generic_price_tag clearfix">	
                                <span class="price">
                                    <span class="sign">$</span>
                                    <span class="currency">99</span>
                                    <span class="cent">.99</span>
                                    <span class="month">/MON</span>
                                </span>
                            </div>
                            <!--//PRICE END-->
                            
                        </div>                            
                        <!--//HEAD PRICE DETAIL END-->
                        
                        <!--FEATURE LIST START-->
                        <div class="generic_feature_list">
                        	<ul>
                            	<li><span>2GB</span> Bandwidth</li>
                                <li><span>150GB</span> Storage</li>
                                <li><span>12</span> Accounts</li>
                                <li><span>7</span> Host Domain</li>
                                <li><span>24/7</span> Support</li>
                            </ul>
                        </div>
                        <!--//FEATURE LIST END-->
                        
                        <!--BUTTON START-->
                        <div class="generic_price_btn clearfix">
                        	<a class="" href="">Sign up</a>
                        </div>
                        <!--//BUTTON END-->
                        
                    </div>
                    <!--//PRICE CONTENT END-->
                        
                </div>
                
                <div class="col-md-4">
                
                	<!--PRICE CONTENT START-->
                    <div class="generic_content active clearfix">
                        
                        <!--HEAD PRICE DETAIL START-->
                        <div class="generic_head_price clearfix">
                        
                            <!--HEAD CONTENT START-->
                            <div class="generic_head_content clearfix">
                            
                            	<!--HEAD START-->
                                <div class="head_bg"></div>
                                <div class="head">
                                    <span>Standard</span>
                                </div>
                                <!--//HEAD END-->
                                
                            </div>
                            <!--//HEAD CONTENT END-->
                            
                            <!--PRICE START-->
                            <div class="generic_price_tag clearfix">	
                                <span class="price">
                                    <span class="sign">$</span>
                                    <span class="currency">199</span>
                                    <span class="cent">.99</span>
                                    <span class="month">/MON</span>
                                </span>
                            </div>
                            <!--//PRICE END-->
                            
                        </div>                            
                        <!--//HEAD PRICE DETAIL END-->
                        
                        <!--FEATURE LIST START-->
                        <div class="generic_feature_list">
                        	<ul>
                            	<li><span>2GB</span> Bandwidth</li>
                                <li><span>150GB</span> Storage</li>
                                <li><span>12</span> Accounts</li>
                                <li><span>7</span> Host Domain</li>
                                <li><span>24/7</span> Support</li>
                            </ul>
                        </div>
                        <!--//FEATURE LIST END-->
                        
                        <!--BUTTON START-->
                        <div class="generic_price_btn clearfix">
                        	<a class="" href="">Sign up</a>
                        </div>
                        <!--//BUTTON END-->
                        
                    </div>
                    <!--//PRICE CONTENT END-->
                        
                </div>
                <div class="col-md-4">
                
                	<!--PRICE CONTENT START-->
                    <div class="generic_content clearfix">
                        
                        <!--HEAD PRICE DETAIL START-->
                        <div class="generic_head_price clearfix">
                        
                            <!--HEAD CONTENT START-->
                            <div class="generic_head_content clearfix">
                            
                            	<!--HEAD START-->
                                <div class="head_bg"></div>
                                <div class="head">
                                    <span>Unlimited</span>
                                </div>
                                <!--//HEAD END-->
                                
                            </div>
                            <!--//HEAD CONTENT END-->
                            
                            <!--PRICE START-->
                            <div class="generic_price_tag clearfix">	
                                <span class="price">
                                    <span class="sign">$</span>
                                    <span class="currency">299</span>
                                    <span class="cent">.99</span>
                                    <span class="month">/MON</span>
                                </span>
                            </div>
                            <!--//PRICE END-->
                            
                        </div>                            
                        <!--//HEAD PRICE DETAIL END-->
                        
                        <!--FEATURE LIST START-->
                        <div class="generic_feature_list">
                        	<ul>
                            	<li><span>2GB</span> Bandwidth</li>
                                <li><span>150GB</span> Storage</li>
                                <li><span>12</span> Accounts</li>
                                <li><span>7</span> Host Domain</li>
                                <li><span>24/7</span> Support</li>
                            </ul>
                        </div>
                        <!--//FEATURE LIST END-->
                        
                        <!--BUTTON START-->
                        <div class="generic_price_btn clearfix">
                        	<a class="" href="">Sign up</a>
                        </div>
                        <!--//BUTTON END-->
                        
                    </div>
                    <!--//PRICE CONTENT END-->
                        
                </div>
            </div>	
            <!--//BLOCK ROW END-->
            
        </div>
    </section>             
	<footer>
    	<a class="bottom_btn" href="#">&copy; MrSahar</a>
    </footer>
</div>
            </div>  
            
            <jsp:include page="Footer.jsp" />
              <jsp:include page="Navigation.jsp" />
            </div>
            
    </body>