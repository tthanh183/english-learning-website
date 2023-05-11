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
    <form action="#">
      <div class="input-box">
        <span class="icon"><ion-icon name="person-outline"></ion-icon></span>
        <input type="text" name="" id="" required>
        <label for="">Username</label>
      </div>
      <div class="input-box">
        <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
        <input type="email" name=""  required>
        <label for="">Email</label>
      </div>
      <div class="input-box">
        <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
        <input type="password" name=""  required>
        <label for="">Password</label>
      </div>
      <div class="remember-forgot">
        <label for="">
          <input type="checkbox">I agree to the terms & conditions
        </label>
      </div>
      <button type="submit" class="btn">Register</button>
      <div class="login-register">
        <p>Already have an account? <a href="#" class="login-link">Login</a></p>
      </div>
    </form>
  </div>
</div>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>