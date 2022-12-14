<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS4.css"/> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/9689277209.js" crossorigin="anonymous"></script>
        <title>Editor Workspace</title>
    </head>
     <input type ="hidden" form ="currentJSP" name ="JSPName" value ="MyProfile.jsp">
    <body class = "starci-hide-scrollbar">
        <section class ="starci-full-container starci-img2-background">
            <jsp:include page="NavBar.jsp" />
            <section style = "padding-top: 3rem; padding-left: 3rem ">
                <i class="fa-solid fa-pager"></i> MY PROFILE    
            </section>

            <section class ="p-4 position-relative">
                <form action = "UpdateProfileServlet" id =  "UpdateProfileServlet" method = "post" enctype="multipart/form-data">
                </form>
                <section style = "width: 80%; background: #EADACD; top: 5rem" class = "position-relative starci-horizontal-center starci-rounded shadow">
                    <section style = "height: 12.5rem"> </section>
                    <section class = "p-4"> 
                        <div class ="row">
                            <div class ="col-6 p-4"> 
                                <div class = "h3 starci-font-alteration" > GENERAL </div>
                                <div class ="d-flex">
                                    <div class="form-floating flex-fill me-3">
                                        <input name ="firstName" form ="UpdateProfileServlet" type="text" class="form-control" id="floatingInput" value ="${sessionScope.user.firstName}" placeholder="name@example.com"   >
                                        <label for="floatingInput" > First Name </label>

                                    </div>

                                    <div class="form-floating flex-fill">
                                        <input name ="lastName" form ="UpdateProfileServlet" type="text" class="form-control" id="floatingInput" value ="${sessionScope.user.lastName}" placeholder="name@example.com"   >
                                        <label for="floatingInput" > Last Name </label>

                                    </div>
                                </div>

                                <div class="form-floating mt-3">
                                    <input form ="UpdateProfileServlet" name ="address" type="text" class="form-control" id="floatingInput" value ="${sessionScope.user.address}" placeholder="name@example.com"   >
                                    <label for="floatingInput" > Address </label>
                                </div>


                                <div class="form-floating mt-3">
                                    <input  form ="UpdateProfileServlet" name ="DOB" type="date" class="form-control" id="floatingInput" value ="${sessionScope.user.DOB}" placeholder="name@example.com"   >
                                    <label for="floatingInput" > Date Of Birth </label>
                                </div>

                                <div class ="d-flex mt-3">
                                    <div class ="form-floating flex-fill me-3"> 
                                        <div class="form-floating">
                                            <input form ="UpdateProfileServlet" name ="phoneNumber" type="text" class="form-control" id="floatingInput" value ="${sessionScope.user.phoneNumber}" placeholder="name@example.com"   >
                                            <label for="floatingInput" > Phone Number </label>
                                        </div>
                                    </div>
                                    <div class ="form-floating flex-fill"> 
                                        <div class="form-floating">
                                            <input form ="UpdateProfileServlet" name ="organization" type="text" class="form-control" id="floatingInput" value ="${sessionScope.user.organization}" placeholder="name@example.com"   >
                                            <label for="floatingInput" > Organization </label>
                                        </div>
                                    </div>
                                </div>                    
                                <button form ="UpdateProfileServlet" type = "submit" class = "btn mt-3 starci-button-sp" style = "width: 100%">
                                    <span class = "h5"> Apply Changes </span>
                                </button>


                            </div>
                            <div class ="col-6 p-4"> 

                                <div class = "h3 starci-font-alteration float-end " > PRIVACY </div>
                                <a href="EditorWorkspacePublisher.jsp" class ="starci-no-hyperlink"> 
                                    <button type = "submit" class = "btn starci-button-sp" style = "width: 100%">
                                        <span class = "h5"> Change Password &nbsp; <i class="fa-sharp fa-solid fa-key fa-lg"></i> </span>
                                    </button>
                                </a>
                                <a href="EditorWorkspacePublisher.jsp" class ="starci-no-hyperlink"> 
                                    <button type = "submit" class = "btn  mt-3 starci-button-sp" style = "width: 100%">
                                        <span class = "h5"> Authenticate Email &nbsp; <i class="fa-sharp fa-solid fa-envelope fa-lg"></i> </span>
                                    </button>
                                </a>
                                <div class = "h3 starci-font-alteration mt-5 text-end" > ACHIEVEMENT </div>
                                <div class ="row mt-3">
                                    <div class ="col-6"> 
                                        <div class ="text-end"> <i class="fa-solid fa-heart fa-2x"></i>&nbsp; ${sessionScope.totalReaction}  </div>

                                        <div class ="text-end" style = "font-weight: bold"> Total Loves Received </div>
                                    </div>
                                    <div class ="col-6"> 
                                        <div class ="text-end"><i class="fa-solid fa-download fa-2x"></i> &nbsp; ${sessionScope.totalDownload} </div>

                                        <div class = "text-end" style = "font-weight: bold"> Total Downloads Received </div>
                                    </div>

                                </div>
                            </div>


                        </div>

                        </div>

                    </section>

                </section>


                <section style = "top:1.5rem" class = "position-absolute starci-horizontal-center"> 
                    <section class = "d-inline-block starci-horizontal-center position-relative"> 
                        <img src ="
                             <c:if test = "${not empty sessionScope.user.picture}"> 
                                 ${sessionScope.user.picture}
                             </c:if>
                             <c:if test = "${empty sessionScope.user.picture}"> 
                                 Asset/Image/Application/NoPicture.png
                             </c:if>
                             " style = "border-radius: 50%; width: 10rem; height: 10rem" id ="hide">
                        <img style ="display: none; width: 10rem; height: 10rem; border-radius: 50%; " class ="starci-rounded" id="preview" >  

                    </section> 
                    <br>
                    <section class = "d-inline-block starci-horizontal-center position-relative mt-3"> 
                        @${sessionScope.user.username}
                    </section>  
                    <br>
                    <section class = "d-inline-block starci-horizontal-center position-relative mt-3"> 
                        <div>
                            <label for ="file" class ="position-relative">
                                <div class ="btn btn-lg starci-button-sp2 starci-background position-relative starci-horizontal-center">
                                    <span class ="h5"> Edit </span>  &nbsp; <i class="fa-solid fa-pen fa-lg"></i>
                                </div>
                            </label>
                        </div>
                    </section> 


                </section>  

                <div>
                    <input  class="d-none" form = "UpdateProfileServlet" type="file" name="picture" id="file" accept="image/*" onchange="previewImage();">   
                </div>
                <script>
                    function previewImage() {

                        var file = document.getElementById("file").files;
                        if (file.length > 0) {
                            var fileReader = new FileReader();

                            fileReader.onload = function (event) {
                                document.getElementById("preview").style.display = "inline";
                                document.getElementById("preview").setAttribute("src", event.target.result);
                                document.getElementById("hide").style.display = "none";

                            };

                            fileReader.readAsDataURL(file[0]);
                        }
                    }
                </script>




            </section>
            <section style = "padding: 5rem 1.5rem 5rem 1.5rem">

            </section>
                    <jsp:include page="Footer.jsp" />
        </section>
</html>
