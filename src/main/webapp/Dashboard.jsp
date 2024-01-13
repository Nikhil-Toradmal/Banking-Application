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
      .userAction {
        text-align: center;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        margin-top: 10rem;
        
      }
      #logoutBtn{
      	margin-top:2rem;
      	margin-left: 44rem;
      }
      .userAction > * {
        width: 15rem;
        height: 21rem;
        background: transparent;
        border: none;
        border-radius: 15px;
        margin: 2rem 2.5rem;
        padding: 0.8rem;
        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
          rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
      }
      .userAction img {
        text-align: center;
        min-height: 150px;
        min-width: 150px;
      }
      .btn-primary {
        background-color: green;
        border: none;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
       
      }
      .card:hover{
        transform: scale(1.01);
        transition: all ease-in-out 0.5s ;
      }
      .card-title{
      	 font-size: medium;
      }
      
    
    </style>
</head>
<body>
<div class="userAction">
      <div class="card" style="width: 18rem">
        <img
          src="Images/credit.png"
          class="card-img-top"
          alt="..."
        />
        <div class="card-body">
          <h5 class="card-title">Credit Amount</h5>
          
          <a href="Credit.jsp" class="btn btn-primary"
            >Credit Amount</a
          >
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img
          src="Images/debitAmountPNG.png"
          class="card-img-top"
          alt="..."
        />
        <div class="card-body">
          <h5 class="card-title">Debit Amount</h5>
          
          <a href="Debit.jsp" class="btn btn-primary">Debit Amount</a>
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img
          src="Images/updatePassLogo.png"
          class="card-img-top"
          alt="..."
        />
        <div class="card-body">
          <h5 class="card-title">Update Password</h5>
         
          <a href="UpdateView.jsp" class="btn btn-primary"
            >Update Password</a
          >
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img
          src="Images/deletePNG.png"
          class="card-img-top"
          alt="..."
        />
        <div class="card-body">
          <h5 class="card-title">Delete Account</h5>
          
          <a href="DeleteView.jsp" class="btn btn-primary"
            >Delete Account</a
          >
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img
          src="Images/deletePNG.png"
          class="card-img-top"
          alt="..."
        />
        <div class="card-body">
          <h5 class="card-title">Display Details</h5>
          
          <a href="RetrieveView.jsp" class="btn btn-primary"
            >Display Details</a
          >
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img
          src="Images/deletePNG.png"
          class="card-img-top"
          alt="..."
        />
        <div class="card-body">
          <h5 class="card-title">Recharge</h5><br>
          
          <a href="Recharge.jsp" class="btn btn-primary"
            >Recharge</a
          >
        </div>
      </div>
      <div class="card" style="width: 18rem">
        <img
          src="Images/deletePNG.png"
          class="card-img-top"
          alt="..."
        />
        <div class="card-body">
          <h5 class="card-title">Display <br> All</h5>
          
          <a href="DisplayAllController" class="btn btn-primary"
            >Display <br> All</a
          >
        </div>
      </div>
    </div>
     <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
	
	
	    <a href="LoginView.jsp" class="btn btn-primary" id="logoutBtn" onclick="preventBack()">LogOut</a>
	  <script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0.00);
  window.onunload=function(){null};
</script>
</body>
</html>