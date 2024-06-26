<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 <title>Hello, world!</title>
    <%@include file="all_js_css.jsp" %>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('img/background1.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            color: #ffffff; /* White text color */
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            text-align: center;
        }
        h1 {
            color: #ff0000; /* Red heading color */
            font-family: Sans-serif;
        }
        p {
            font-size: 20px;
            margin-bottom: 20px;
        }
        .button {
            display: inline-block;
           
            color: #ffffff; /* White text color */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #cc0000; /* Darker red on hover */
        }
    </style>
    
    
  </head>
  <body>
   <div class="container">
   <%@include file="navbar.jsp" %>
   <br>  <br> 
   <div class="overlay">
            <h1 >Welcome to NoteTaker</h1>
            <p>Take notes easily with NoteTaker</p>
            <a href="add_notes.jsp" class="button btn-danger">Add Notes</a>
   </div>
   
   </div>

      </body>
</html>