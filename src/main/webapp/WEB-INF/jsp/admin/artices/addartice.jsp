<%--
  Created by IntelliJ IDEA.
  User: ygao0
  Date: 2020/3/7
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="content">
    <div>
        添加文章
    </div>
    <div>
        <table class="content-content">
            <tr>
                <td>文章名</td>
                <td><input placeholder="内容"></td>
            </tr>
            <tr>
                <td>时间</td>
                <td><input placeholder="时间"></td>
            </tr>
            <tr>
                <td>内容</td>
                <td><textarea placeholder="内容"></textarea></td>
            </tr>
        </table>
    </div>


</rapid:override>

<%@ include file="../Public/framework.jsp" %>

<style>
    table, td
    {
        border-collapse: collapse;
        text-align: center;
        border: 1px solid rgba(228, 228, 228, 1);
    } table
      {
          border-spacing: 2px;}
    .content-content{
        width: 500px;
        height: 500px;
    }
</style>