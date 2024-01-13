<%@page import="bank.model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <style>
    body {
      background: linear-gradient(
        90deg,
        rgba(2, 0, 36, 1) 0%,
        rgba(23, 136, 59, 0.47111344537815125) 0%,
        rgba(0, 212, 255, 0) 95%
      );
      .tab1{
      	 border: 2px solid black;
        border-radius: 5px 45px 5px;
         padding: 3rem;
        margin-top:4rem;
         display: flex;
        justify-content: center;
        align-items: center;
       
        background-color: rgb(244,244,244);
      }
      }
      .ram{
      	width :100%;
      	height:200%
      	border-collapse:collapse;
      }
       th{
      	 height: 70%;
      	  padding: 2rem;
         text-align: centre;
          border: 2px solid black;
         background-color: gray;
          background-color: #04AA6D;
          color: white;
      }
      td{
      	 height: 70%;
      	  padding: 1rem;
         text-align: centre;
          border: 2px solid black;
        
      }
      tr,td:nth-child(even) {background-color: #f2f2f2;}
      #backButton {
        transform: translateY(45px);
        background-color: green;
        color: white;
        margin-left:1rem;
      }
      #backButton a{
        text-decoration: none;
        color: white;
      }
     
      
    </style>
</head>
<body>
    <%--  <% List<Register> lst=null;
      Register reg=null; %>
      <%
      lst=(List<Register>)session.getAttribute("data");
      reg=lst.get(0);
      if(!session.isNew())
      {
    	  for(Register lstn :lst)
          {
        	  out.println(lstn.getRegno()+"&nbsp"+lstn.getCustname()+"&nbsp"+lstn.getAccbal()+"&nbsp"+lstn.getUsername());
          }
      }
      session.invalidate();
      
      %> 
      --%>
    
      <c:if test = "${requestScope.empList!=null and  
      not empty requestScope.empList}">
      <div class="tab1">
      <table class="ram" >
      	<tr>
      		<th>Register Number</th>
      		<th>Customer Name</th>
      		<th>Username</th>      		
      		<th>Password</th>
      		<th>Account Balance</th>
      		
      	</tr>
      
      <c:forEach items="${requestScope.empList}" var="e">
      	<tr>
      		<td>${e.regno}</td>
      		<td>${e.custname}</td>
       		<td>${e.username}</td>     		
       		<td>${e.password}</td>
      		<td>${e.accbal}</td>
      		
      	</tr>
      </c:forEach>
      </table>
      </c:if>
      <button  class="btn" id="backButton">
     <a href="Dashboard.jsp">Dashboard </a>
    </button>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
</body>
</html>