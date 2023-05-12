<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Registration </title>
  <link rel="stylesheet" href="./assets/css/styles.css">
</head>
<body>

<div class="wrapper">
  <div class="form-box register ">
    <h2>Registration</h2>
    <c:if test="${not empty messageResponse}">
      <div class="alert alert-block alert-${alert}">
        <button type="button" class="close" data-dismiss="alert">
          <i class="ace-icon fa fa-times"></i>
        </button>
          ${messageResponse}
      </div>
    </c:if>
    <form action="/registration.html" method="post">
      <div class="input-box">
        <span class="icon"><ion-icon name="person-outline"></ion-icon></span>
        <input type="text" name="name" id="name" required>
        <label>Username</label>
      </div>
      <div class="input-box">
        <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
        <input type="email" name="email"  required>
        <label>Email</label>
      </div>
      <div class="input-box">
        <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
        <input type="password" name="password"  required>
        <label>Password</label>
      </div>
      <div class="remember-forgot">
        <label>
          <input type="checkbox">I agree to the terms & conditions
        </label>
      </div>
      <button type="submit" class="btn">Register</button>
      <div class="login-register">
        <p>Already have an account? <a href="/login.html" class="login-link">Login</a></p>
      </div>
    </form>
  </div>
</div>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>