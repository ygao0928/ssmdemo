<%--
  Created by IntelliJ IDEA.
  User: ygao0
  Date: 2020/3/6
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<html>
<head>
    <title>管理后台</title>
</head>
<link rel="stylesheet" href="/layui/css/layui.css" media="all">
<script type="text/javascript" src="/js/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/layui/layui.js"></script>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">个人博客后台</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    ${sessionScope.user.username}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">文章管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/admin">所有文章</a></dd>
                        <dd class=""><a href="/admin/article/insert">添加文章</a></dd>
                        <dd><a href="javascript:;">标签管理</a></dd>

                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">用户列表</a></dd>
                        <dd><a href="javascript:;">添加用户</a></dd>

                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <rapid:block name="content">

            </rapid:block>
            <%--内容主体区域--%>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © ygao.ltd - 个人专属博客系统
    </div>
</div>

<script type="text/javascript" src="/js/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
    $(function () {
        $(".add_artice").click(function () {
            console.log("跳转")
            $.ajax({
                type: 'post',
                url: '/admin/article/insert',
                dataType: "json",//注意使用的是打他dataType，而不是Content-Type
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                async: false,
                // data: aa,
                success: function (data) {
                    console.log(data.msg)

                }
            })
        });
    });

</script>
</body>
</html>
