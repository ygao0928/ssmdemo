<%--
  Created by IntelliJ IDEA.
  User: ygao0
  Date: 2020/2/24
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("path", request.getContextPath());

%>
<html>
<head>
    <script type="text/javascript" src="/js/jquery/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="layui/layui.js"></script>
    <link href="layui/css/layui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="layer-v3.1.1/layer/layer.js"></script>

    <title>登录</title>
</head>
<body>
<form id="login-form" class="layui-form dd" action="" lay-filter="example">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block ss">
            <input type="text" name="username" lay-verify="title" autocomplete="off" placeholder="用户名" value="高勇"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
        <div class="layui-input-block ss">
            <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input"
                   value="123456">
        </div>
    </div>
    <div class="layui-btn layui-btn-normal login-btn">登录</div>
    <div class="layui-btn layui-btn-normal register">注册</div>
</form>

</body>
<script type="text/javascript">
    $(function () {
        $(".login-btn").click(function () {

            const aa = $("#login-form").serialize();
            console.log(aa);
            $.ajax({
                type: 'post',
                url: '/checklogin',
                dataType: "json",//注意使用的是打他dataType，而不是Content-Type
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                async: false,
                data: aa,
                success: function (data) {
                    console.log(data.msg)
                    if (data == null) {
                        alert("没有这个用户！")
                    } else {
                        alert(data.msg);

                        window.location.href = "/admin";
                    }
                }
            });

        })
        $(".register").click(function () {

        })
    })
</script>
<style>
    body {

        background-image: url('/img/banner/banner0004.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100%
    }

    .ss {
        width: 200px;
    }

    .dd {
        text-align: left;
        border-radius: 5px;
        background-color: #8D8D8D;
        padding: 100px;
        width: 300px;
        height: 100px;
        margin: 200px auto 0;
    }

    .login-btn {
        margin-left: 70px;
    }
</style>
</html>

