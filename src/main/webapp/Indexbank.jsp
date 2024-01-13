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
.mainConatiner {
  display: grid;
  grid-template-columns: 2fr 2fr 1fr;
  justify-content: center;
  align-items: center;
  padding: 2rem;
}
.mainConatiner > * {
  padding: 2rem;
}
.mainConatiner > * h1 {
  font-size: 3.7rem;
}
.mainConatiner > * p {
  padding: 1rem;
  font-size: 1.1rem;
}
.mainConatiner .btn1 {
  color: whitesmoke;
  background-color: green;
  min-height: 3.8rem;
  width: 70%;
  border: none;
  font-size: 1.3rem;
   text-decoration: none;
	 border-radius: 0.5rem;
	 margin-bottom:4%;
}
.mainConatiner .btn2 {
  color: whitesmoke;
  background-color: green;
  min-height: 3.8rem;
  width: 70%;
  border: none;
  font-size: 1.3rem;
   text-decoration: none;
    border-radius: 0.5rem;
}
.mainConatiner .btn1 a{
  color: white;
  text-decoration: none;
}
.mainConatiner .btn2 a{
  color: white;
  text-decoration: none;
}
.mainConatiner .imageSide {
  transform: translateY(80px);
}
.mainConatiner .imageSide img {
  width: auto;
  height: auto;
  transform: scale(1.3);
  filter: drop-shadow(0.35rem 0.35rem 0.4rem rgba(0, 0, 0, 0.5));
}
.userCount h1 {
  font-size: 1.7rem;
  line-height: 0;
  text-align: center;
}

.userCount p {
  font-size: 1.3rem;
  line-height: 0;
  margin: auto;
  text-align: center;
}
    
    </style>
</head>

<body>
	
	 <div class="mainConatiner">
      <div class="infoSide">
        <h1>Digital banking Made for</h1>

        <h1>Digital User's</h1>
        <p>
          Gopay is an all-in-one mobile banking app chock full of all the tools,
          tips, and tricks you need to take control of�your�finances,
        </p>
		<button class="btn1"><a href="RegisterView.jsp">Sign up</a></button> <br>
		<button class="btn2"><a href="LoginView.jsp">Login</a></button>
       
      </div>
      <div class="imageSide">
        <img src="https://raw.githubusercontent.com/RutvalThonge/BankingWebLinkCode/main/BankingProjectFolder/Images/bankHomeImage.png" alt="" />
      </div>
      
    </div>
		
		
</body>
</html>