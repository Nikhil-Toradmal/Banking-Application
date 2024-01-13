<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
   body {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: linear-gradient(
          90deg,
          rgba(2, 0, 36, 1) 0%,
          rgba(23, 136, 59, 0.47111344537815125) 0%,
          rgba(0, 212, 255, 0) 95%
        );
      }
      .container {
        display: grid;
        grid-template-columns: 1fr 1fr;

        padding: 2rem;
        border-radius: 15px;
      }
      .btn-primary {
        background-color: green;
        border: none;
        width: 100%;
      }

      .container > * {
        display: flex;
        justify-content: center;
        align-items: center;
        border: 5px solid green;
        border-radius: 5px 45px 5px;
        background-color: rgb(244, 244, 244);
       
        
      }
      .form-check {
        float: right;
      }
      .form-check a {
        text-decoration: none;
        color: grey;
      }
      .logInpart {
        width: 100%;
        background: transparent;
       
       margin-left: 20rem;
      }
      form {
        padding: 1rem;
        width: 100%;
        background: transparent;
      }
      .form-control {
        background: transparent;
        border: 1px solid green;
      }
      form input {
        background: transparent;
      }
      .imagePart {
        overflow: hidden;
        transform: translateY(70px);
      }
      .imagePart img {
        width: 100%;
        object-fit: contain;
      }
      #backButton {
        transform: translateY(45px);
        background-color: green;
        color: white;
      }
      #backButton a{
        text-decoration: none;
        color: white;
      }
      .msg{
     color: black;
	 margin-left: 3rem;
     display: inline-block;
    }
</style>
 <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="style.css" />
</head>
<body>
	<div class="container">
      <div class="logInpart">
        <form action="RechargeController">
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label" name="username"
              >Username</label
            >
            <input
              type="text"
              class="form-control"
              id="username"
              name="username"
              aria-describedby="emailHelp"
              required
            />
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label" name="password"
              >Password</label
            >
            <input
              type="text"
              class="form-control"
              id="password"
              name="password"
              required
            />
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label" name="mobile"
              >Mobile Number</label
            >
            <input
              type="number"
              class="form-control"
              id="mobile"
              name="mobile"
              required
              max="9999999999" min="1000000000" pattern=[0-9]{1}[0-9]{9}
              
            />
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label" name="operator"
              >Operator</label
            >
            <select type="text"
              class="form-control"
              id="operator"
              name="operator"
              required
             >
              	<option value="" disabled selected hidden>Select operator</option>
    			<option value="Jio">Jio</option>
   				<option value="Vi">Vi</option>
   				<option value="Airtel">Airtel</option>
  			</select>
          </div>
          
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label" name="plan"
              >Plans</label
            >
            <select type="text"
              class="form-control"
              id="plan"
              name="plan"
              required
             >
              	<option value="" disabled selected hidden>Select plan</option>
    			<option value="15">15Rs 1Gb Validity:Basic plan</option>
    			<option value="61">61Rs 6Gb Validity:Basic plan</option>
   				<option value="249">249Rs 1.5Gb/Day Unlimited calls Validity:28 Days</option>
   				<option value="299">299Rs 2Gb/Day Unlimited calls Validity:28 Days</option>
   				<option value="699">699Rs 1.5Gb/Day Unlimited calls Validity:84 Days</option>
   				<option value="719">719Rs 2Gb/Day Unlimited calls Validity:84 Days</option>
   				<option value="2999">2999Rs 2.5Gb/Day Unlimited calls Validity:365 Days</option>
  			</select>
          </div>
         
          <button type="submit" class="btn btn-primary" >Recharge</button>
        </form>
      </div>
      
    </div>
     <%!String msg=" "; %>
    
	<%
		if(!session.isNew())
		{
			 msg=(String)session.getAttribute("result");
			
		}
	%>
	<h5 class="msg"><%=msg%></h5>
	<%session.invalidate(); %>
    <button  class="btn" id="backButton">
     <a href="Dashboard.jsp">Dashboard </a>
    </button>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    <br>
	
</body>
</html>
