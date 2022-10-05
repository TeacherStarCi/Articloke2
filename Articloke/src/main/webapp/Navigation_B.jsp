<link rel="stylesheet" href="CSS/Bootstrap4.css">
<link rel="stylesheet" href="CSS/Custom.css">
<div style = "height: 60px">
<nav class ="navbar navbar-nav navbar-expand-lg fixed-top" style = "border-bottom: 1px grey solid; height: 60px; background: #C6B6C5;">    
     
    <a class="navbar-brand" style ="width: 60px" href="Home.jsp">
        <img src="Image/LogoIcon.png" class ="position-relative" style = "height: 50px; width: 50px; left: 5px">
        <div class="d-inline-block position-relative h3 ml-2 " style = "font-family: cursive; color: #212529;top: 7px; "> Articloke </div>
    </a>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto mr-5">
      <li class="nav-item">
          <a class="nav-link" href="#"><span style = "color: black" class = "h5"> About Us</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#"><span style = "color: black" class = "h5"> Products</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#"><span style = "color: black" class = "h5"> Services</span></a>
      </li>
    </ul>
      <form id = "ShowArticleResultServlet" action = "ShowArticleResultServlet" method="post"> 
    </form>
    <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" form="ShowArticleResultServlet" type="search" placeholder="Search on Articloke" aria-label="Search" name ="keyword" value ="">        
        <button class="btn btn-light my-2 my-sm-0" form="ShowArticleResultServlet" type="submit"><span class = "h5">Search</span></button>    
    </form>
      <ul class="navbar-nav ml-5">
      <li class="nav-item">
          <a class="nav-link" href="SignIn.jsp">
        <span style = "color: black" class = "h5"> Sign In </span>  
          </a> 
      </li>
       </ul> 
     <ul class="navbar-nav">
      <li class="nav-item">
          <a class="nav-link" href="SignUp.jsp">
          <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><span class = "h5" style = "color: black; ">Sign Up </span></button>
          </a> 
      </li>
       </ul> 
  </div>

    
</nav>
    </div>