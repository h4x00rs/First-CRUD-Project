<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" type="text/css">

    <title>
        <s:message code="application.title" />
    </title>
</head>
<body>

<div class="dataFrame largeFrame">
    <table>
        <tr>
            <td class="dataColl">
                <a href="users.html">
                    <s:message code="menu.item.users" />
                </a>
            </td>
        </tr>
    </table>
</div>

<%--<div class="dataFrame largeFrame">
    <h1>
        <s:message code="userListPage.header.title" />
    </h1>

    <table border="1" class="dataTable">
        <tr>
            <th class="dataColl">
                <s:message code="grid.common.id.header" />
            </th>
            <th class="dataColl">
                <s:message code="userListPage.userGrid.userName.header" />
            </th>
            <th class="dataColl">
                <s:message code="userListPage.userGrid.password.header" />
            </th>
            <th class="dataColl">
                <s:message code="grid.common.actions.header" />
            </th>
        </tr>

        <c:forEach items="${userList}" var="user">
            <tr>
                <td class="dataColl">
                        ${user.id}
                </td>
                <td class="dataColl">
                        ${user.userName}
                </td>
                <td class="dataColl">
                        ${user.password}
                </td>

                <td class="actionsColl dataColl">
                    <c:url value="update-user.html" var="update_url">
                        <c:param name="user_id" value="${user.id}" />
                    </c:url>

                    <a href="${update_url}">
                        <s:message code="grid.common.actions.updateAction" />
                    </a>

                    &nbsp;&nbsp;

                    <c:url value="delete-user.html" var="delete_url">
                        <c:param name="user_id" value="${user.id}" />
                    </c:url>

                    <a href="${delete_url}">
                        <s:message code="grid.common.actions.deleteAction" />
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <br />
    <hr />
    <br />

    <div class="dataFrame shortFrame">
        <h1>
            <s:message code="userListPage.saveUserForm.title" />
        </h1>

        <spring:form action="save-user.html" method="post" modelAttribute="user">
            <spring:hidden path="id" />

            <s:message code="userListPage.saveUserForm.userName.label" />
            <br />
            <spring:input path="userName" />

            <br />
            <br />

            <s:message code="userListPage.saveUserForm.password.label" />
            <br />
            <spring:input path="password" />

            <br />
            <br />
            <input type="submit" name="login_btn" value="<s:message code="common.buttons.save" />" />

        </spring:form>
    </div>
</div>--%>
</body>
</html>
