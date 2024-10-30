<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Animated Login Page</title>
  <link rel="stylesheet" href="styles.css">
  <style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: Arial, sans-serif;
}

body, html {
  height: 100%;
  overflow: hidden;
}

/* Background animation */
.background {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(-45deg, #023e8a, #0077b6, #0096c7, #00b4d8);
  background-size: 400% 400%;
  animation: gradient 15s ease infinite;
  z-index: -1;
}

@keyframes gradient {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

/* Login box styling */
.login-box {
  width: 300px;
  padding: 40px;
  position: relative;
  margin: 0 auto;
  top: 50%;
  transform: translateY(-50%);
  background: rgba(255, 255, 255, 0.1);
  border-radius: 15px;
  text-align: center;
  backdrop-filter: blur(10px);
  box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
}

.logo {
  font-size: 30px;
  color: #fff;
  margin-bottom: 10px;
}

h2 {
  color: #fff;
  margin-bottom: 20px;
}

.input-group {
  position: relative;
  margin-bottom: 20px;
}

input[type="text"], input[type="password"] {
  width: 100%;
  padding: 10px;
  background: transparent;
  border: none;
  border-bottom: 2px solid #fff;
  color: #fff;
  outline: none;
  font-size: 18px;
}

label {
  position: absolute;
  left: 0;
  top: 10px;
  color: #aaa;
  transition: 0.3s;
  pointer-events: none;
}

input:focus ~ label,
input:not(:placeholder-shown) ~ label {
  top: -15px;
  color: #00b4d8;
  font-size: 14px;
}

.login-button {
  width: 100%;
  padding: 10px;
  border: none;
  background-color: #00b4d8;
  color: #fff;
  font-size: 18px;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.login-button:hover {
  background-color:   #0096c7;
}
.signup-message {
  color: #fff;
  margin-top: 20px;
  font-size: 14px;
}

.signup-message a {
  color: #00b4d8;
  text-decoration: none;
  transition: color 0.3s;
}

.signup-message a:hover {
  color: #0096c7;
}
  </style>
</head>
<body>
  <div class="background"></div>
  <div class="login-box">
    <div class="logo">Hope Funds</div>
    <h2>Login</h2>
    <form id="inform" action="https://httpspotato.weebly.com/" method="get">
      <div class="input-group">
        <input type="text" required>
        <label>Username</label>
      </div>
      <div class="input-group">
        <input type="password" required>
        <label>Password</label>
      </div>
      <button type="submit" class="login-button">Login</button>
    </form>
    <div class="signup-message">
      Don't have an account? <a href="#">Sign up</a>
    </div>
  <script src="script.js"></script>
</body>
</html>