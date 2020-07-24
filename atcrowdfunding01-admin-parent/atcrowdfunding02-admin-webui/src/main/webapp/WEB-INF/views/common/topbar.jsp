<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <%-- 标题 --%>
    <div class="navbar-header">
      <div><a class="navbar-brand" style="font-size:32px;" href="${PATH}/admin/main">众筹平台 - 控制面板</a></div>
    </div>
    <%-- 用户信息 --%>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        <%-- 用户名、菜单 --%>
        <li style="padding-top:8px;">
          <div class="btn-group">
            <%-- 用户名 --%>
            <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
              <i class="glyphicon glyphicon-user"></i>${sessionScope.loginAdmin.username}<span class="caret"></span>
            </button>
            <%-- 菜单 --%>
            <ul class="dropdown-menu" role="menu">
              <li><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
              <li><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
              <li class="divider"></li>
              <li>
                <a href="${PATH}/logout"><i class="glyphicon glyphicon-off"></i>退出系统</a>
              </li>
            </ul>
          </div>
        </li>
        <%-- 帮助 --%>
        <li style="margin-left:10px;padding-top:8px;">
          <button type="button" class="btn btn-default btn-danger">
            <span class="glyphicon glyphicon-question-sign"></span>帮助
          </button>
        </li>
      </ul>
      <%-- 查询表单 --%>
      <form class="navbar-form navbar-right">
        <input type="text" class="form-control" placeholder="查询">
      </form>
    </div>
  </div>
</nav>
