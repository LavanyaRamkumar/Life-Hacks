<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>KSTARK</title>
  </head>
  <style media="screen">
  body
  {
    background-image: url("bg.png");
    background-size: cover;
    background-attachment: fixed;
    background-repeat: no-repeat;
    width: 100%;
    overflow: hidden;
  }
    input[type=submit]
    {
      margin-left:35%;
      margin-top: 200px;
      text-align: center;
      border: none;
      border-radius: 20px;
      padding: 40px;
      width: 30%;
      background-color: rgba(255, 255, 255, 0.8);
    }
    input[type=submit]:hover
    {
      background-color: rgba(0, 0, 0, 0.8);
      color: white;
    }
  </style>
  <body>
    <form class="" action="signup.php" method="post" target="_blank">
      <input type="submit" value="New user">
    </form>
    <form class="" action="login.php" method="post" target="_blank">
      <input type="submit" value="Login">
    </form>

</body>
</html>
