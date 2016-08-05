
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
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
        <form action="index.html">
            <Input class="button" type="text" name="select">
            <button class="button">Button >></button>
            <Input  class="button" type="submit" name="submit">
        </form > 
        Dropdownlist2    Servlet communicated message to JSP: ${message}
       
        <%-- ${param["searchText"]}--%>

        
<%-- String item=request.getParameter("otpion1");
out.println(item);--%>
<c:set var="drop"/>
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from users where name=?
            <sql:param value="${param['drop']}"/>
           </sql:query>
        <table border="1" width="100%">
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>Age</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <tr>
                <c:forEach var="row" items="${result.rows}">
                    <td> <c:out value="${row.name}"/></td>   
                <td><c:out value="${row.addresss}"/></td>
                <td><c:out value="${row.email}"/></td>
                <td><c:out value="..."/></td>
                <td><a href="edit.jsp?id=<c:out value='${row.name}'/>">edit</a></td>
                <td><a href="delete.jsp?Id=<c:out value='${row.name}'/>">delete</a></td>
                </tr>
     </c:forEach>
        </table>
</body>
</html>
