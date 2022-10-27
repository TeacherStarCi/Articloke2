<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Paper</title>
    </head>
    <body>
        <div class ="starci-full-container" style = "min-height: 150%">
            <form id ="CreatePaperServlet" action="CreatePaperServlet" enctype="multipart/form-data" method = "post"> </form>
            <div class ="position-absolute starci-center p-5 starci-rounded shadow" style = "width: 800px"  >
                <div class = "position-relative text-center starci-font-alteration starci-horizontal-center h1"> 
                    Create New Paper
                </div>
                <div class ="row mt-5">
                    <div class ="col-6">
                        <div class = "h5 mt-3 mb-0"> Title* </div>
                        <input form = "CreatePaperServlet" class ="form-control" name ="title" value ="${requestScope.title}">
                        <div style = "color:red"> ${requestScope.titleError} </div>
                        <div class = "h5 mt-3 mb-0"> Topic* </div>
                        <select form = "CreatePaperServlet" class ="form-control" name ="topic">
                            <c:forEach items="${applicationScope.topics}" var = "topic"> 
                                <option value = "${topic.topic}">                        
                                    ${topic.topic}
                                </option>

                            </c:forEach>
                        </select>    
                    </div> 
                    <div class ="col-6">
                        <div class = "h5 mt-3 mb-0"> Picture </div> 
                        <script>
                            function previewImage() {
                                var file = document.getElementById("file").files;
                                if (file.length > 0) {
                                    var fileReader = new FileReader();

                                    fileReader.onload = function (event) {
                                        document.getElementById("preview").setAttribute("src", event.target.result);
                                    };

                                    fileReader.readAsDataURL(file[0]);
                                }
                            }
                        </script>
                        <input class ="form-control" form = "CreatePaperServlet" style ="width: 300px" type="file" name="picture" id="file" accept="image/*" onchange="previewImage();">   
                        <div style = "color:red"> ${requestScope.fileNameError} </div>
                        <img class = "position-relative mt-3" id="preview" style = "width: 150px">              

                    </div> 
                </div>
                <div class = "h5 mt-3 mb-0"> Description </div>
                <textarea form = "CreatePaperServlet" name="description" class="form-control" cols="20" rows="5">${requestScope.description}</textarea>
                <div style = "color:red"> ${requestScope.descriptionError} </div>
                <div class = "h5 mt-3 mb-0"> Content </div>
                <textarea form = "CreatePaperServlet" name="content" class="form-control" cols="20" rows="10">${requestScope.content}</textarea>  
  <div style = "color:red"> ${requestScope.contentError} </div>
                <button form = "CreatePaperServlet" class ="btn btn-lg btn-light starci-background position-relative mt-5 starci-horizontal-center"> <span class = "h4"> Create </span></button>
            </div>
        </div>
    </body>
</html>
