<!DOCTYPE html>
<html lang="en">
  <head>
    
    <title>Auto Spare Parts Login Page</title>
    <link rel="stylesheet" href="style.css" />
    
  </head>
  <body>
    <!-- partial:index.partial.html -->
    <div class="body"></div>
    <div class="grad"></div>
    <div class="header">
      <div>Shop<span>Login</span></div>
    </div>
    <br />
    <div class="login">
     <span style="color:green;">${logoutMessage }</span>
      <form  action="<%=request.getContextPath() %>/LoginServlet" class="login-form" method="post">
        <div class="textbox">
          <input type="text" id="username"  name="username" placeholder="Username" />
          
        </div>
        <div class="textbox">
          <input type="password" name="password" id="password" placeholder="Password" />
          
        </div>
        <span style="color:red;">${errMessage }</span>
        <button type="submit">LOGIN</button>
        
        
      
      </form>
    </div>
    <!-- partial -->
  
  </body>
</html>
