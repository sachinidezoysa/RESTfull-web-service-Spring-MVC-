<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit EMployee</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../scripts/editEmployee.js"></script>
    <script type="text/javascript" src="../scripts/addEmployee.js"></script>
    <script type="text/javascript" src="../scripts/getPatterns.js"></script>
    <style>
        body{
            background-color: #4DB6AC;
        }
        .navbar {
            padding-top: 15px;
            padding-bottom: 15px;
            border: 0;
            border-radius: 0;
            margin-bottom: 0;
            font-size: 12px;
            letter-spacing: 5px;
            background-color: black;
        }
        .navbar-nav  li a:hover {
            color: #1abc9c !important;
        }

        .bg-4 {
            background-color: #2f2f2f; /* Black Gray */
            color: #fff;
        }

        .container-fluid {
            padding-top: 29px;
            padding-bottom: 25px;
        }

    </style>
</head>
<body>

<div class="container text-center" style="background-color: darkkhaki; width: 100%;">
    <h1>ABC Company</h1>
    <p>Employee Details!</p>
</div>
<!-- Navbar -->
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Home</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="addEmployee.jsp">New Employee</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>

<br><br>
<div class="container">
    <div >
        <div class="jumbotron text-center">
            <h2>Create Employeer</h2>
            <form class="register-form" id="register">
                ID:<br>
                <input type="text" id="id" required/>
                <br>
                Name:<br>
                <input type="text" name="firstname" required>
                <br>
                Email:<br>
                <input type="text" name="lastname" required>
                <br>
                Address:<br>
                <input type="text" name="firstname" required>
                <br>
                Contact Number:<br>
                <input type="text" name="lastname" required>
                <br><br>
                <button class="buttonUp">Save</button>
            </form>
        </div>
    </div>
</div>

<!--footer-->
<footer class="container-fluid bg-4 text-center">
    <p>no 62-1, Elpitiya RD, Ambalangoda</p>
    <p>Contact num: 0772454265</p>
    <p>Copyright Ⓒ 2018</p>
</footer>
</body>
</html>
