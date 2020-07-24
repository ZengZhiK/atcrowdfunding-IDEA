<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <%@ include file="/WEB-INF/views/common/head.jsp" %>
  <link rel="stylesheet" href="${PATH}/static/css/font-awesome.min.css">
  <link rel="stylesheet" href="${PATH}/static/css/main.css">

  <style>
    .tree li {
      list-style-type: none;
      cursor: pointer;
    }

    .tree-closed {
      height: 40px;
    }

    .tree-expanded {
      height: auto;
    }
  </style>
</head>

<body>

<%-- topbar --%>
<jsp:include page="/WEB-INF/views/common/topbar.jsp"/>

<%-- 页面主体 --%>
<div class="container-fluid">
  <div class="row">
    <%-- sidebar --%>
    <jsp:include page="/WEB-INF/views/common/sidebar.jsp"/>
    <%-- content --%>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
      <h1 class="page-header">控制面板</h1>

      <div class="row placeholders">
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>Label</h4>
          <span class="text-muted">Something else</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>Label</h4>
          <span class="text-muted">Something else</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>Label</h4>
          <span class="text-muted">Something else</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>Label</h4>
          <span class="text-muted">Something else</span>
        </div>
      </div>
    </div>
  </div>
</div>

<%-- js --%>
<%@ include file="/WEB-INF/views/common/js.jsp" %>
<script src="${PATH}/static/script/docs.min.js"></script>
<script type="text/javascript">
  $(function () {
    $(".list-group-item").click(function () {
      if ($(this).find("ul")) {
        $(this).toggleClass("tree-closed");
        if ($(this).hasClass("tree-closed")) {
          $("ul", this).hide("fast");
        } else {
          $("ul", this).show("fast");
        }
      }
    });
  });
</script>
</body>
</html>

