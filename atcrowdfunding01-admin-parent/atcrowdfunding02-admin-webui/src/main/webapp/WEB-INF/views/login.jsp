<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <%@ include file="/WEB-INF/views/common/head.jsp" %>
  <link rel="stylesheet" href="${PATH}/static/css/font-awesome.min.css">
  <link rel="stylesheet" href="${PATH}/static/css/login.css">

  <style>
  </style>
</head>
<body>

<%-- 页面顶部 --%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <div><a class="navbar-brand" href="${PATH}/index" style="font-size:32px;">尚筹网-创意产品众筹平台</a></div>
    </div>
  </div>
</nav>

<div class="container">
  <form class="form-signin" role="form" id="loginForm" action="${PATH}/doLogin" method="post">
    <%-- 标题 --%>
    <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 用户登录</h2>
    <%-- 账号 --%>
    <div class="form-group has-success has-feedback">
      <input type="text" class="form-control" name="loginacct" value="superadmin" placeholder="请输入登录账号" autofocus>
      <span class="glyphicon glyphicon-user form-control-feedback"></span>
    </div>
    <%-- 密码 --%>
    <div class="form-group has-success has-feedback">
      <input type="text" class="form-control" name="userpswd" value="123456" placeholder="请输入登录密码"
             style="margin-top:10px;">
      <span class="glyphicon glyphicon-lock form-control-feedback"></span>
    </div>
    <%-- 选项 --%>
    <div class="checkbox">
      <label>
        <input type="checkbox" name="remember-me">记住我
      </label>
      <br>
      <label>
        忘记密码
      </label>
      <label style="float:right">
        <a href="reg.html">我要注册</a>
      </label>
    </div>
    <%-- 登录按钮 --%>
    <a class="btn btn-lg btn-success btn-block" onclick="doLogin()">登录</a>
  </form>
</div>

<%@ include file="/WEB-INF/views/common/js.jsp" %>
<script>
  function doLogin() {
    $("#loginForm").submit();
  }
</script>
</body>
</html>
