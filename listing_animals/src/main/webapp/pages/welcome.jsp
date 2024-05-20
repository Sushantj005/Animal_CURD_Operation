<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table class="table" border="1px">
  <thead class="thead-dark">
    <tr>
      <th scope="col">sid</th>
      <th scope="col">Name</th>
      <th scope="col">Category</th>
      <th scope="col">Discription</th>
      <th scope="col">Life Expectancy</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${kk}" var="e">
    <tr>
    <th scope="row">${e.sid}</th>
      <td>${e.name}</td>
      <td>${e.category}</td>
      <td>${e.description}</td>
      <td>${e.lifeExpectancy}</td>
      <td>
     
      
      
      <a href="edit/${e.sid}" class="btn btn-primary">Edit</a> |
      <a href="del/${e.sid}" class="btn btn-danger">Delete</a>
      
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>

</body>
</html>