<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="css/style.css" rel="stylesheet"/>
     <%@include file="js-css.jsp" %>
  </head>
  <body>
    <div class="container ">
      <%@include file="navbar.jsp" %>
      <br>
        <div class="card shadow-bg-white mt-3 py-3">
          <img alt="" class="img-fluid mx-auto" style="max-width:300px"    src="img/notepad.png"/>
          <h1 class="text-primary text-uppercase text-center mt-3">Start taking your notes</h1>
          <div class="container text-center">
            <button class="btn btn-outline-primary text-center">Start here</button>
          </div>
        </div> 
    </div>
    

  </body>
</html>