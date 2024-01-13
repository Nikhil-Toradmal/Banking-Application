<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Delete Account</title>
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
        height: 80vh;
      }

      .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: transparent;
        font-size: 1.3rem;
        margin-top: 1rem;
      }
      .navbar .btn {
        min-height: 3.8rem;
        width: 15%;
        border-radius: 15px;

        font-size: 1.3rem;
      }
      .navbar .btn {
        text-decoration: underline;
      }
      .navbar,
      .navbar-expand-lg,
      .bg-body-tertiary {
        background: transparent;
      }
      .navbar-nav {
        justify-content: center;
        flex-grow: 1; /* This makes the ul take up all available space */
      }

      .navbar-brand {
        margin-right: auto; /* Push the image to the left corner */
      }

      .btn {
        margin-left: auto; /* Push the button to the right corner */
        background-color: green;
        color: whitesmoke;
        border: none;
      }
      .container >*{
        margin-top: 5rem;
        padding: 3rem;
        border: 5px solid green;
        border-radius: 5px 45px 5px;
        
      }
      form {
        border: none;
        border-radius: 15px;
        box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
        padding: 2rem;
      }
      .form-control {
        background: transparent;
        border: 2px solid green;
      }
      #backButton{
       float:right;
       margin-top:3rem;
       margin-right:8rem;
      }
      #backButton a{
      text-decoration:none;
      color:black;
      }
      
    </style>
</head>
<body>

      <div class="container-fluid">
       
    
      </div>
 
    <div class="container">
	<form action="DeleteController">
	
		<div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">enter register number to delete</label>
          <input
            type="text"
            class="form-control"
            id="regno"
            name="regno"
            required
          />
        </div>
        <button type="submit" class="btn btn-primary">Delete</button>
      </form>

	</div>
    <button  class="btn" id="backButton">
      <span style="background: transparent">&larrhk;</span><a href="Dashboard.jsp">Go Back</a>
    </button>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    

</body>
</html>