<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS.css"/> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/9689277209.js" crossorigin="anonymous"></script>
        <title>Editor Workspace</title>
    </head>
    <body>
        <div class ="starci-full-container starci-img-background">
            <div class ="row m-0 p-0">
                <div class ="col-4 p-3">
                    <section class ="p-4"> <i class="fa-solid fa-pager"></i> REVIEWER WORKSPACE </section>
                    <section class = "p-4 starci-rounded shadow" style = "background: #D2C4B8">
                        <div class = "h3 starci-font-alteration" > SEARCH</div>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com"   >
                            <label for="floatingInput" > Keyword </label>
                        </div>

                        <div class="form-floating mt-3">
                            <input type="text" class="form-control" id="floatingInput"  placeholder="name@example.com" >
                            <label for="floatingInput">Title </label>
                        </div>

                        <div class ="row mt-3">
                            <div class ="col-6">

                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInput"  placeholder="name@example.com" >
                                    <label for="floatingInput">Author </label>
                                </div>
                            </div>
                            <div class ="col-6">
                                <div class="form-floating">

                                    <select class="form-select" id="sel1" name="sellist">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                    </select>
                                    <label for="sel1" class="form-label">Topic</label>
                                </div>
                            </div>
                        </div>
                        <div class ="mt-3"> 
                            <div> Created Date</div>
                            <div class ="row mt-1">
                                <div class ="col-6">
                                    <div class="form-floating">
                                        <input type="date" class="form-control" id="floatingInput"  placeholder="name@example.com" >
                                        <label for="floatingInput">From </label>
                                    </div>
                                </div>
                                <div class ="col-6">
                                    <div class="form-floating">
                                        <input type="date" class="form-control" id="floatingInput"  placeholder="name@example.com" >
                                        <label for="floatingInput">To </label>
                                    </div>   
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class = "py-4">
                        <div class = "h3 starci-font-alteration ms-4" > FORWARD</div> 

                        <button type = "submit" class = "btn btn-white mt-3 starci-button-sp" style = "width: 100%">
                            <span class = "h5"> Publisher Workspace </span>
                        </button>
                    </section>
                </div>

                <div class ="col-8 p-4">         

                    <section class = "p-4">

                        <div class = "h3 starci-font-alteration text-end" > RESULT</div> 
                        <div style = "overflow: auto; min-height: 420px" class ="starci-hide-scrollbar position-relative p-0">
                            <c:forEach items = "${applicationScope.pendingPapers}" var = "paper"> 
                                <a href ="ReviewPaperShowServlet?ID=${paper.ID}" class = "starci-no-hyperlink">
                                    <div  class ="bg-white starci-rounded shadow mb-3 starci-hover-gray starci-pointer starcii">
                                        <div class ="row p-3">
                                            <div class ="col-3">
                                                <img src ="${paper.picture}" class = "img-fluid">
                                            </div>
                                            <div class ="col-9" style = "height:0">
                                                <div class = "h4"> ${paper.title} </div>
                                                <div class ="row"> 
                                                    <div class ="col-6">
                                                        <div> <span style = "font-weight: bold"> ID </span> ${paper.ID} </div>
                                                        <div>  <span style = "font-weight: bold"> Author </span> ${paper.username} </div>
                                                        <div> <span style = "font-weight: bold"> Published Status </span> ${paper.publishedStatus} </div>
                                                    </div>
                                                    <div class ="col-6">
                                                        <div>  <span style = "font-weight: bold"> Topic </span> ${paper.topic} <img src = "${applicationScope.topicsPicture.get(paper.topic)}" style = "width: 1rem"> </div>
                                                        <div> <span style = "font-weight: bold"> Created Date </span> ${paper.createdDate} </div>
                                                        <div>  <span style = "font-weight: bold">Modified Date </span> 
                                                            <c:if test = "${not empty paper.modifiedDate}">
                                                                ${paper.modifiedDate}
                                                            </c:if>
                                                            <c:if test = "${empty paper.modifiedDate}">
                                                                Not Yet
                                                            </c:if>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div>  <span style = "font-weight: bold"> Description </span> <br> ${paper.description} </div>
                                            </div>

                                        </div>

                                    </div>
                                </a>
                            </c:forEach>
                        </div> 
                    </section>
                </div>
            </div>
        </div>
</html>
