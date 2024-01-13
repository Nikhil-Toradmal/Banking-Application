<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Create Account</title>
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
      .container1 >*{
        margin-top: 1rem;
        margin: 5rem;
        margin-top: 5rem;
        padding: 3rem;
        border: 5px solid green;
        border-radius: 5px 45px 5px;
      }
      
      .container1 .btn {
        height: 3.5rem;
        width: 50%;
        border: none;
        font-size: 1.3rem;
        border-radius: 15px;
      }

      form {
        
border: none;
        border-radius: 15px;
        box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
        padding: 2rem;
        position: relative; /* Required for positioning pseudo-element */
      }

      .form-control,
      .form-select {
        background: transparent;
        height: 3rem;
        border: 1px solid rgb(61, 61, 61);

        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
          rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
      }

      #backButtton {
      position:absolute;
        right:5rem;
        height:3.8rem;
        width:9rem;
      }
      #backButtton a{
       text-decoration: none;
        color:black;
      }
    </style>
</head>

<body>

 
      <div class="container-fluid">
        <img
          src="https://github.com/RutvalThonge/BankingWebLinkCode/blob/main/BankingProjectFolder/Images/bankLogo.png?raw=true" width="3" height="3" alt="Bank Logo"
          alt=""
          class="navbar-brand"
          href="#"
          style="height: 60px; width: 60px"
        />
        <!-- <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
          <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="LoginView.jsp">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="RegisterView.jsp">Create</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="RetrieveView.jsp">Retrieve</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="UpdateView.jsp">Update</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="DeleteView.jsp">Delete</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="DisplayAllController">Display</a>
            </li>
            
          </ul>
        </div>
        -->
      </div>
   
    <div class="container1">
      <form class="row g-3" action="RegisterController">
      <div class="col-md-4">
          <label for="validationDefault01" class="form-label"> Register Number&nbsp:</label>
          <input
            type="text"
            class="form-control"
            id="accName"
            name="regno"
            placeholder="*Temp Name"
            required
          />
        </div>
        <div class="col-md-4">
          <label for="validationDefault01" class="form-label"> Name&nbsp:</label>
          <input
            type="text"
            class="form-control"
            id="accName"
            name="custname"
            placeholder="*Temp Name"
            required
          />
        </div>
        <div class="col-md-4">
          <label for="validationDefaultUsername" class="form-label"
            >Username&nbsp:</label
          >
          <div class="input-group">
            <input
              type="text"
              class="form-control"
              id="username"
              name="username"
              placeholder="*username@temp.com"
              aria-describedby="inputGroupPrepend2"
              required
            />
          </div>
        </div>
        <div class="col-md-4">
          <label for="validationDefault02" class="form-label">Password&nbsp:</label>
          <input
            type="text"
            class="form-control"
            id="userPassword"
            name="password"
            placeholder="*Password#XYZ"
            required
          />
        </div>
        
        <div class="col-md-6">
          <label for="validationDefault03" class="form-label">Account Balance&nbsp:</label>
          <input
            type="number"
            class="form-control"
            id="initialAmount"
            name="accbal"
            placeholder="*10000Rs"
            required
          />
        </div>
        <!--  <div class="col-md-3">
          <label for="validationDefault04" class="form-label"
            >Account Type</label
          >
          <select class="form-select" id="validationDefault04" required>
            <option selected disabled value="">Select Account Type</option>
            <option>Current Account</option>
            <option>Saving Account</option>
          </select>
        </div>
        <div class="col-md-3">
          <label for="validationDefault05" class="form-label"
            >Date of Birth</label
          >
          <input type="date" class="form-control" id="birthDate" required />
        </div>
        -->

        <div class="col-12">
          <button class="btn btn-primary" type="submit">Open Account</button>
        </div>
      </form>
    </div>
    <button  class="btn" id="backButtton">
       <span style="background: transparent">&larrhk;</span><a href="Indexbank.jsp" onclick="preventBack()">Go Back</a>
    </button>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
      <script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>


	
</body>
</html>