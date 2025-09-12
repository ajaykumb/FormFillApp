<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #1E90FF; /* Blue background */
    }

    .container {
      background-color: rgba(255, 255, 255, 0.9);
      padding: 20px;
      margin: 50px auto;
      width: 400px;
      border-radius: 12px;
      box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
    }

    h1 {
      text-align: center;
      color: #333;
    }

    input[type=text], input[type=password] {
      width: 100%;
      padding: 10px;
      margin: 5px 0 15px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .registerbtn {
      background-color: #007BFF;
      color: white;
      padding: 12px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      width: 100%;
      font-size: 16px;
    }

    .registerbtn:hover {
      background-color: #0056b3;
    }

    .signin {
      text-align: center;
      margin-top: 20px;
    }
  </style>
</head>
<body>

<form action="welcome.jsp" method="post">
  <div class="container">
    <h1>Welcome!! Ajay Kumar Behera Registration Form!!</h1>
    <p>Please fill in this form for registration!!</p>
    <hr><br>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" id="name" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a>.</p>
  </div>
</form>

</body>
</html>
