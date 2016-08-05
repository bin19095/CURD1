
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <title>SELECT Operation</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
    </head>
    <body>
        <%--how to call parameter + how to pass parameter from method to jsp+--%>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/jsptest"
                           user="root"  password=""/>
                <%=request.getParameter("Id")%>       
        <%-- ${param["searchText"]}--%>

        <%-- String item=request.getParameter("otpion1");
        out.println(item);--%>
        <c:set var="Id"/>
        <sql:update dataSource="${snapshot}" var="result">
            DELETE FROM jsptest.users WHERE name=?
            <sql:param value="${param['Id']}"/>
        </sql:update>
            <form action="dropdownlist.jsp">
                <input type="submit" name="drop2" value="Back To Query">
            </form>
    </body>
</html>