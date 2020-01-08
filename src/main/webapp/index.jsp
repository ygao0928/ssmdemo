<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());

%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }

        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<div class="banner-top">
<img class="banner-top-img" src="/img/banner/banner0002.jpeg">
</div>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的管理系统：简单实现增、删、改、查。
                </h1>
            </div>
        </div>
    </div>
</div>
<br><br>
<a href="${path }/login">进入登录页面</a>
<h3>

    <a href="${path }/paper/allPaper">点击进入管理页面</a>
</h3>
</body>
<style>
    .banner-top{
        width: 100%;
    }.banner-top-img{
             width: 80%;height: 200px;
         }
</style>
</html>
