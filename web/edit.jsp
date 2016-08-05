
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <title>SELECT Operation</title>
       <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
    </head>
    <body>
        <% String st=request.getParameter("id"); %>
        <form action="edit2.jsp">
            Name:
            <Input  type="text" name="name">
            Address:
            <Input  type="text" name="address">
            Email:
            <Input  type="text" name="email">
            Your Are About To Change The Id of:
            <Input  type="submit" name="nameId" value="<%=request.getParameter("id")%>" class="button">
                  </form > 
                id2=<%=request.getParameter("id")%>
    </body>
</html>