<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Home</title>
          <link rel="stylesheet" href="CSS/Custom.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
              <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
            </head>
            <body>
              <div class="custom-big-container">
                <jsp:include page="Navigation.jsp"/>
                <!-- Section 1 -->
                <div class="container-fluid position-relative p-0" style="width: 100%; height: 600px; overflow:hidden;">
                  <img class="position-absolute img-fluid" src="Image/Art.gif" style="width: 100%">
                    <div class="position-absolute custom-horizontal-center d-inline-block text-center" style="top:15%">
                      <span style="font-size: 7.5rem; font-weight: bolder; font-family: cursive">
                        Articloke
                      </span>
                    </br>
                    <span class="h5" style="font-family: cursive">
                      The garden where knowledge are planted
                    </span>
                  </div>
                </div>
                <!-- End Section 1 -->
                <!-- Section 2 -->
                <div class="container-fluid p-0" style="background: linear-gradient(180deg, rgba(198,182,197,1) 30%, rgba(255,255,255,1) 100%)">
                  <div class="container position-relative">
                    <div class="h3">
                      Latest Articles
                    </div>
                    <div class="custom-horizontal-line"></div>
                    <div class="row mt-3">

                      <c:forEach begin="0" end="2" varStatus="status">
                        <div class="col-4 p-1 pointer">
                          <jsp:include page="LatestArticleCard.jsp"/>
                        </div>
                      </c:forEach>
                    </div>
                    <div class="row mt-3">
                      <c:forEach begin="3" end="6" varStatus="status">
                        <div class="col-3 position-relative p-1 pointer">
                          <jsp:include page="LatestArticleCard.jsp"/>
                        </div>
                      </c:forEach>
                    </div>
                  </div>
                </div>
                <!-- End Section 2 -->
                <!-- Section 3 -->
                <div class="container position-relative mt-5">
                  <div class="h3 mt-3">
                    Popular Topics
                  </div>
                  <div class="custom-horizontal-line"></div>
                  <div class="row">
                    <c:forEach begin="0" end="5" varStatus="status" step="2">
                      <div class="col-4 px-3 pointer">
                        <c:forEach begin="0" end="1" varStatus="status2">
                          <a class="custom-no-hyperlink-display" href="ForwardSearchHomeTopicServlet?topic=${sessionScope.topicMostCount.get(status.index + status2.index).topic.topic}">
                            <div class="p-2 custom-hover-topic shadow custom-border mt-3">
                              <img src="${sessionScope.topicMostCount.get(status.index + status2.index).topic.picture}" style="height: 60px; width: 60px " class="mr-3">
                                <span class="h3 ml-1">
                                  ${sessionScope.topicMostCount.get(status.index + status2.index).topic.topic}
                                </span>
                                ${sessionScope.topicMostCount.get(status.index + status2.index).count} article
                                <c:if test="${sessionScope.topicMostCount.get(status.index + status2.index).count > 1}"></c:if>
                              </div>
                            </a>
                          </c:forEach>
                        </div>
                      </c:forEach>
                    </div>
                  </div>
                  <!-- End Section 3 -->
                  <jsp:include page="Footer.jsp"/>
                </div>
              </body>
            </html>
