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
        Servlet communicated message to JSP: ${message}
        <%String select = request.getParameter("select");
            out.println(select);
        %>
        <%-- ${param["searchText"]}--%>

        <%--
           Enumeration paramNames = request.getParameterNames();

   while(paramNames.hasMoreElements()) {
      String paramName = (String)paramNames.nextElement();
      out.print("<tr><td>" + paramName + "</td>\n");
      String paramValue = request.getHeader(paramName);
      out.println("<td> " + paramValue + "</td></tr>\n");
   }
        --%>

        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from users 
            
            
        </sql:query>
        <form action="dropdownlist2.jsp">
            <table border="1" width="100%">
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>Age</th>
            </tr>
            
            <select name="drop">
                <c:forEach var="row" items="${result.rows}">
                    <option
                        name="option1"/>
                    <c:out value="${row.name}"/>   
                         </option><%-- //////doesn't changes the value as we select from dropdownList value
            <c:set var="drop"/> 
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from users where name=?
            <sql:param value="${param['drop']}"/>
           </sql:query>
                </c:forEach>
                            <c:forEach var="row" items="${result.rows}">
                    <td> <c:out value="${row.name}"/></td>   
                <td><c:out value="${row.addresss}"/></td>
                <td><c:out value="${row.email}"/></td> --%>
                            </c:forEach> 
        </select>
             <input class="button" type="submit"  name="Go" value="G0->">
                    
            </form>
            
    
     

        </table>
    </body>
</html>