
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
                <%=request.getParameter("nameId")%>       
        <%-- ${param["searchText"]}--%>

        <%-- String item=request.getParameter("otpion1");
        out.println(item);--%>
        <c:set var="nameId"/>
        <c:set var="name"/>
        <c:set var="email"/>
        <c:set var="address"/>
        <sql:update dataSource="${snapshot}" var="result">
            UPDATE jsptest.users SET  name=?,email = ?,addresss=? WHERE name = ?
            <sql:param value="${param['name']}"/>
            <sql:param value="${param['address']}"/>
            <sql:param value="${param['email']}"/>
            <sql:param value="${param['nameId']}"/>
        </sql:update>
            <form action="dropdownlist.jsp">
                <input type="submit" name="drop2" value="Go To Query">
            </form>
    </body>
</html>