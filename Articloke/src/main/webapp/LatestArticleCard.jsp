<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <link rel="stylesheet" href="CSS/Bootstrap4.css">
    <link rel="stylesheet" href="CSS/Custom.css">

      <div class="custom-hover-container ">
        <div class="custom-square-container custom-hover-hide-image">
        <img class="position-relative img-fluid" src="${articlesLatestPublishedDate.get(status.index).picture}">
          <div class="custom-hover-dislay-text">
            <div class="p-3">
              <span class="h4">
                ${sessionScope.articlesLatestPublishedDate.get(status.index).title}
              </span>
              <br>
                <div class="mt-1">
                  Author: ${sessionScope.articlesLatestPublishedDate.get(status.index).username}</div>
                <div class="mt-1">
                  Topic: ${sessionScope.articlesLatestPublishedDate.get(status.index).topic}</div>
                <div class="mt-1">
                  Published Date: ${sessionScope.articlesLatestPublishedDate.get(status.index).publishedDate}</div>
                <div class="d-flex mt-2 ">
                  <div>
                    ${sessionScope.articlesLatestPublishedDate.get(status.index).totalReaction}
                    <img src="Image/HeartIcon.png" class="position-relative" width="20px" style="top:-2px"></div>
                    <div class="ml-3">
                      ${sessionScope.articlesLatestPublishedDate.get(status.index).totalDownload}
                      <img src="Image/DownloadIcon.png" class="position-relative" width="20px" style="top:-2px"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
