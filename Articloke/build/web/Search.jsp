<%-- 
    Document   : Search
    Created on : 25-Sep-2022, 21:33:50
    Author     : tucuo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <link rel="stylesheet" href="Asset/css/Table.css" />
        <link rel="stylesheet" href="Asset/css/Custom.css" />
        <link rel="stylesheet" href="Asset/css/Navigation.css" />
        <link rel="stylesheet" href="Asset/css/Footer.css" />
        <link rel="stylesheet" href="Asset/css/Search.css" />
         
    </head>
    <body>


        <div class = "Search">
            <div class = "SearchBar">
                <div class = "large" style = "top: 20px; left:50%; transform: translate(-50%,0%); position: absolute">
                    FIND YOUR ARTICLE
                </div>
                <div class = "SearchBar-Code">
                    <form action = "ArticleShowServlet">
                        <div class = "SearchBar-Code-Keyword">
                            KEYWORD
                            <input class = "none" size ="10" type = "TEXT" name ="keywordPara" value ="${requestScope.keywordPara}" placeholder ="Keyword">
                        </div>

                        <div class = "SearchBar-Code-Title">
                            TITLE
                            <input class = "none" size ="10" type = "TEXT" name ="titlePara" value ="${requestScope.titlePara}" placeholder ="Topic">
                        </div>
                        <div class = "SearchBar-Code-Author">
                            AUTHOR
                            <input class = "none"  size ="10" type = "TEXT" name ="authorPara"  value ="${requestScope.authorPara}" placeholder ="Author">
                        </div>
                        <div class = "SearchBar-Code-Topic">
                            TOPIC
                            <select style = "width: 145px; max-width: 145px" name = "topicPara" placeholder = "Topic">
                                <option value = "all"> All </option>
                            </select>
                        </div>
                        <div class = "SearchBar-Code-Permission">
                            PERMISSION
                            <select style = "width: 145px; max-width: 145px" name = "permissionPara">
                                <option value = "all"> All </option>
                                <option value = "public"> Public </option>
                                <option value = "yourOrganization"> Your Organization </option>
                                <option value = "private"> Private </option>
                            </select>
                        </div>
                        <div class = "SearchBar-Code-Organization">
                            ORGANIZATION
                            <select name = "organizationPara" style = "width: 145px; max-width: 145px">
                                <option value = "all"> All </option>
                            </select>
                        </div>
                        <div class = "SearchBar-Code-SortedBy">
                            SORTED BY
                            <select style = "width: 145px; max-width: 145px" name = "sortedByPara">
                                <option value = "all"> All </option>
                                <option value = "alphabet"> Alphabet </option>
                            </select>
                        </div>
                        <div class = "SearchBar-Code-SearchResult">
                            <input class = "imageHover" type="IMAGE" style ="position:absolute; width: 50px; height: 50px;"" width="48" height="48" src="Asset/img/NavigationFooter/Search.png">
                        </div>
                    </form>
                </div>
            </div>
                <c:if test = "${not empty requestScope.articles}"> 
                    <div style = "left:calc(50% - 580px);top:310px;position:absolute;">
                    Number of Results: ${requestScope.articles.size()}|Topic: abc| Result: cda
                    </div>
                    <div class = "ShowContent">
                        <div class = "ShowContent-Results">
                            <table class = "table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th scope = "col">ID</th>
                                        <th scope = "col">Picture</th>
                                        <th scope = "col">Title</th>
                                        <th scope = "col">Author</th>
                                        <th scope = "col">Detail</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items = "${requestScope.articles}" var = "article" begin = "${requestScope.minEntry}" end = "${requestScope.maxEntry}">
                                    <tr>
                                        <td> ${article.ID}</td>
                                        <td> </td>
                                        <td style = "text-decoration: underline; font-weight: bold;"> ${article.title} </td>
                                        <td> ${article.author}</td>
                                        <td> </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                              

                            
                            
                            
                        </div>
                        <div class = "ShowContent-NextPage">
                            
                            <div class = "center">
                                <c:if test = "${not empty requestScope.currentPage}" >
                                Page ${requestScope.currentPage} of ${requestScope.maxPage}
                                </c:if>
                                <c:if test = "${empty requestScope.currentPage}" >
                                Page 1 of 1
                                </c:if>
                            </div>
                            <form action = "ChangePageServlet">
                                <input type ="hidden" name ="keywordPara" value ="${requestScope.keywordPara}">
                                <input type ="hidden" name ="titlePara" value ="${requestScope.titlePara}">
                                <input type ="hidden" name ="authorPara" value ="${requestScope.authorPara}">
                                <input type ="hidden" name ="topicPara" value ="${requestScope.topicPara}">
                                <input type ="hidden" name ="permissionPara" value ="${requestScope.permissionPara}">
                                <input type ="hidden" name ="organizationPara" value ="${requestScope.organizationPara}">
                                <input type ="hidden" name ="sortedByPara" value ="${requestScope.sortedByPra}">
                                <input type ="hidden" name ="currentPage" value ="${requestScope.currentPage}">
                            <c:if test = "${requestScope.currentPage > 1}"> 
                                    <input style = "position:absolute; top:50%;transform:translate(-50%,-50%); left: 5%" type ="SUBMIT" class ="small" name ="action" value = "Previous">
                                </c:if>
                                   <c:if test = "${requestScope.currentPage < requestScope.maxPage}">
                                      <input style = "position:absolute; top:50%;transform:translate(-50%,-50%); left: 85%" type ="SUBMIT" class ="small" name ="action" value = "Next">
                                   </c:if>
                            </form>
                        </div>
                    </div>
 
                </c:if>
                       
          
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
