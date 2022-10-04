<link href="CSS/Utils.css" rel="stylesheet">
<link href="CSS/DivCustom.css" rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div style = "top: 0; left: 0;width: 100%; height: 60px; border-bottom: 4px #D5E6BD solid; position: fixed; background-color:white">
    <div style = "top: 0; left :0; width: 200px; height: 60px;">
        <a href="Home.jsp">
            <img class = "vertical-center" style ="left: 5px; width: 50px; height: 50px" src = "Image/LogoIcon.png" > 
            <img style ="bottom: 5px; height: 30px; width: 145px; left:50px" src = "Image/TitleIcon.png" >
        </a>
    </div>   
    <div style = "top: 0; right :0; width: 830px; height: 60px;">
        <div class ="hover-white-div" style = "top: 0; left :0; width:250px; height: 60px;">
            <div class = "center" style = "width: 200px; font-size: 24px">
                About Articloke
            </div>
        </div>
        <div class ="hover-white-div" style = "top: 0; left :250px; width: 150px; height: 60px;">
            <div class = "center" style = "font-size: 24px">
                Product
            </div>
        </div>
        <div class ="hover-white-div" style = "top: 0; left :400px; width: 150px; height: 60px;">
            <div class = "center" style = "font-size: 24px">
                Service

            </div>
        </div>
        <div  style = "top: 0; right: 60px; width: 220px; height: 60px;">
            <input type = "text" name = "" value = "" class = "vertical-center" style = "left: 10px; padding: 5px 6px 5px 6px;width:145px;">
            <div style  = "right:5px;width: 30px; height:30px" class = "vertical-center hover-white-image">
                <img class ="hover-white-image" style= "width: 100%; height:100%; top: 0; left: 0" src = "Image/SearchIcon.png"> 
            </div>
        </div>
        <c:if test = "${empty sessionScope.user}">
        <a href="SignIn.jsp">
            <div class ="hover-white-div" style = "top: 0; right :0; width: 60px; height: 60px;">
            
                <img class = "center" style= "width: 40px;height:40px" src = "Image/UserIcon.png"> 
                
                
            </div> 
        </a>
            </c:if>
         <c:if test = "${not empty sessionScope.user}">
        <a href="UserProfile.jsp">
            <div class ="hover-white-div" style = "top: 0; right :0; width: 60px; height: 60px;">
            
                <img class = "center" style= "width: 40px;height:40px;border-radius: 20px" src = "${sessionScope.user.picture}"> 
                
                
            </div> 
        </a>
            </c:if>
    </div>
</div>