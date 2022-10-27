<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section style = "height: 60px"> 
    <nav class="navbar navbar-expand-lg navbar-light starci-background-new fixed-top starci-bottom-border-new" style = "height: 60px">
        <div class="container-fluid" >
            <a class="navbar-brand py-0" href="#">
                <div class ="position-relative d-flex" style = "height: 60px"> 
                    <img class = "position-relative" style ="margin-right: 0.5rem" src ="Asset/Image/Application/LogoIcon.png" style = "height: 60px"> 
                    <div class ="position-relative" style ="height: 60px" > 
                        <div class = "h2 mb-0 starci-font-alteration position-relative starci-vertical-center">  Articloke </div>
                    </div>
                </div>
            </a>

            <ul class="navbar-nav ms-auto py-0">
                <li class="nav-item">
                    <a class="nav-link" href="#"><span class = "h4" style = "color: #000"> About Us </span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><span class = "h4" style = "color: #000"> Contact </span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><span class = "h4" style = "color: #000"> Services </span></a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2 ms-5" type="text" >
                <button class="btn btn-sm btn-light border-dark" type="submit"><span class = "h4"> Search </span></button>
            </form>

            <c:if test = "${empty sessionScope.user}">
                <ul class="navbar-nav ms-5">
                    <li class="nav-item">
                        <a class="nav-link" href="SignIn.jsp"><span class = "h4" style = "color: #000"> Sign In </span></a>
                    </li>
                </ul>
                <form action = "SignUp.jsp">        
                    <button class="btn btn-sm btn-outline-light border-dark" type="submit"><span class = "h4" style = "color: #000"> Sign Up </span></button>
                </form>
            </c:if>
            <c:if test = "${not empty sessionScope.user}">
                <div class="ms-5 dropdown">
                    <a href ="#" data-bs-toggle="dropdown">
                        <img src ="<c:if test = "${not empty sessionScope.user.picture}">${sessionScope.user.picture}</c:if>
                             <c:if test = "${empty sessionScope.user.picture}"> Asset/Image/Application/NoPicture.png </c:if>
                                 " style = "width: 40px" class = "rounded-circle">
                        </a>
                        <ul class="dropdown-menu position-absolute" style = "left:
                        <c:if test = "${sessionScope.user.role != 'Reviewer' && sessionScope.user.role != 'Debater' && sessionScope.user.role != 'Publisher' && sessionScope.user.role != 'Editor-In-Chief'}"> -7.5rem </c:if>
                        <c:if test = "${sessionScope.user.role == 'Reviewer' || sessionScope.user.role == 'Debater' || sessionScope.user.role == 'Publisher' || sessionScope.user.role == 'Editor-In-Chief'}"> -12.5rem  </c:if>
                            ">
                            <li><a class="dropdown-item h4 my-0 " href="#">Profile</a></li>
                            <li><a class="dropdown-item h4 my-0" href="#">Sign Out</a></li>
                            <c:if test = "${sessionScope.user.role == 'Reviewer' || sessionScope.user.role == 'Debater' || sessionScope.user.role == 'Publisher' || sessionScope.user.role == 'Editor-In-Chief'}"> 
                            <li><a class="dropdown-item h4 my-0" href="#">Editor Workspace</a></li>
                            </c:if>
                    </ul>
                </div>
            </c:if>
        </div>
    </nav> 
</section>
