<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src=
                "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        </script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS.css"/>
        <script src="https://kit.fontawesome.com/9689277209.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" defer></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review Paper</title>
    </head>
    <body>
        
        <section class ="starci-full-container starci-img-background">
            <section class ="p-4"></section>
            <section class ="starci-section-container">
                <form class="was-validated" id ="ReviewCoreServlet" action="ReviewCoreServlet">  </form>

                <input   form = "ReviewCoreServlet"  type ="hidden" name ="ID" value ="${requestScope.paper.ID}"> 
                <section class ="starci-horizontal-center position-relative p-4 starci-rounded shadow " style = "background: #EADACD; width: 60%"  >

                    <div class = "position-relative text-center starci-font-alteration starci-horizontal-center h3"> 
                        REVIEW PENDING PAPER   
                    </div>
                    <div class ="row mt-5 ">
                        <div class ="col-6">
                            <div class="form-floating was-validated">
                                <input required minlength="25" maxlength="150" form = "ReviewCoreServlet" type="text" class="form-control" id="floatingInput" name ="title"  value ="${requestScope.paper.title}"  placeholder="name@example.com" >
                                <label class="form-label" for="floatingInput"> Title </label>
                
                                <div class="invalid-feedback">Title must be between 25 - 150 characters.</div>
                            </div>

                            <div class="form-floating mt-3">
                                <select form = "ReviewCoreServlet" class="form-select" id="sel1" name ="topic">
                                    <c:forEach items = "${applicationScope.topics}" var = "topic">
                                        <option <c:if test = "${requestScope.paper.topic == topic.topic}"> selected </c:if> value = "${topic.topic}"> ${topic.topic}</option>
                                    </c:forEach>
                                </select>
                                <label for="sel1" class="form-label">Topic</label>
                            </div>


                        </div> 
                        <div class ="col-6">
                            <img class = "position-relative" src ="${requestScope.paper.picture}" style = "width: 100%">
                        </div> 
                    </div>
                    <div class = "mt-3 "> Description </div>
                    <div class ="was-validated">
                    <textarea  required minlength="50" maxlength="500" style = "height: 120px"  id ="name"  form = "ReviewCoreServlet" name="description" class="form-control">${requestScope.paper.description}</textarea>
               <div class="invalid-feedback">Description must be between 50 - 500 characters.</div>
                    </div>
                  
                    <div class = "mt-3"> Content </div>
                       <div class ="was-validated">
                    <textarea required minlength="100" maxlength="2000" style = "height: 200px" form = "ReviewCoreServlet" name="content" class="form-control">${requestScope.paper.content}</textarea>  
                    <div class="invalid-feedback">Content must be between 100 - 2000 characters.</div>
                    </div>
                    <div style ="color:red"> ${requestScope.contentError}</div>
                    <div class ="d-flex mt-3 position-relative">
                        <div class ="position-relative starci-horizontal-center">
                            <button type="button" class="btn btn-lg starci-button-sp" data-bs-toggle="modal" data-bs-target="#myModal">
                                <span class = "h5"> Reject</span></button>
                            <button form = "ReviewCoreServlet" class ="btn  starci-button-sp btn-lg starci-background position-relative" name = "action" value = "approve"> <span class = "h5"> Approve </span></button>
                        </div>
                    </div>
                </section>

                <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-body">
                                 Feedback
                                <button type="button" class="btn-close position-relative float-end" data-bs-dismiss="modal"></button>

                                <textarea form = "ReviewCoreServlet" name="feedback" class="form-control" cols="20" rows="5"></textarea>  
                                <button form ="ReviewCoreServlet" name ="action" value ="reject" type="submit" class=" position-relative btn btn-lg btn-light mt-3 starci-horizontal-center starci-background" data-bs-dismiss="modal">Send</button>
                            </div>

                        </div>
                    </div>
                </div>
            </section>  
            <section class ="p-4"></section>
        </section>
    </body>
</html>
