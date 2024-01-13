<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    }
    .btn {
      margin-left: 45rem; /* Push the button to the right corner */
      background-color: green;
      color: whitesmoke;
      border: none;
    }
    .conatiner {
      height: 50vh;
      padding: 2rem;
      margin: auto auto;
      width: 70%;
    }
    form {
      border-radius: 15px;
      box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
      font-size: 1.3rem;
      border: none;
      margin: auto auto;
      padding: 3rem;
    }
    .form-control {
      border: 2px solid green;
      background: transparent;
    }
    #backButton {
      
      margin-top:7rem;
      margin-left:40rem;
    }
    #backButton a{
     text-decoration: none;
     color: black;
    }
    .msg{
     color: black;
     margin-top:2rem;
	  margin-left: 37rem;
      
      
       display: inline-block;
    }
    </style>
</head>
<body>
	
	<div class="conatiner">
      <form action="CreditController">
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Username</label>
          <input
            type="text"
            class="form-control"
            name="username"
            id="username"
            placeholder="Enter Username"
            required
          />
        </div>
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Password</label>
          <input
            type="password"
            class="form-control"
            name="password"
            id="password"
            placeholder="Enter Password"
            required
          />
        </div>
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Amount</label>
          <input
            type="number"
            class="form-control"
            name="amount"
            id="amount"
            placeholder="Enter Amount"
            required
          />
        </div>

        <button type="submit" class="btn btn-primary">Credit Amount</button>
      </form>
    </div>
	<button  class="btn" id="backButton">
     <a href="Dashboard.jsp">Dashboard </a>
    </button>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    <br>
    <%!String msg=" "; %>
    
	<%
		if(!session.isNew())
		{
			 msg=(String)session.getAttribute("result");
			
		}
		
	%>
	<%session.invalidate(); %>
	<h4 class="msg"><%=msg%></h4>
	
</body>
</html>