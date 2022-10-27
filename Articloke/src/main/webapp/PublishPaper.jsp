<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" defer></script>
        <link rel="stylesheet" href="Asset/CSS/StarCiCSS.css"/>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/9689277209.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <section class = "starci-full-container starci-img-background">
            <div class ="row p-0 m-0">
                <div class ="col-4 p-3"> 
                      <section class ="p-4"> <i class="fa-solid fa-pager"></i> PUBLISHER WORKSPACE </section>
                  <section class ="p-4">
                        <div class="p-4 starci-section-container starci-rounded shadow" style = "background: #D2C4B8">
                            <div class ="h2 starci-font-alteration">UPLOAD</div>
                            <input style ="width: 100%" class ="form-control" form = "CreatePaperServlet" style ="width: 300px" type="file" name="picture" id="file" accept=".pdf">   
                        <button class ="btn starci-button-sp2 mt-3" style ="width: 100%">
                                            <span class ="h5"> Publish</span>
                                        </button>
                        </div>
                       
                      
                         </section>
                      

                                       
                 
                </div>
                <div class ="col-8 p-4 position-relative">
                
                 
                    <section class = "p-4">
                        <div class ="h2 starci-font-alteration text-end">PREVIEW</div>
                        <object class = "position-relative"  style = "width: 100%; height: 500px"
                                data='Asset/File/Temp/${requestScope.fileNamePDF}'
                                type="application/pdf"        

                                >
                            <iframe class = "position-relative"  style = "width: 100%; height: 500px"
                                    src='Asset/File/Temp/${requestScope.fileNamePDF}'

                                    >
                                <p>This browser does not support PDF!</p>
                            </iframe>
                        </object>
                    </section>
                    <section class = "p-4 position-relative">
              <div class ="h2 starci-font-alteration text-end">GET FILES</div>
                               <button class ="btn starci-button-sp position-relative float-end"> <span class = "h5"> Download (.Docx) </span></button>
                            <button class ="btn starci-button-sp position-relative float-end me-3"> <span class = "h5"> Download (.PDF) </span></button>
                         
                     
                    </section>
                                   
                </div>
            </div>

        </div>    
    </section>
</body>
</html>