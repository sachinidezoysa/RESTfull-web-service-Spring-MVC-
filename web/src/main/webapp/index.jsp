<!--
~
~    (C) Copyright 2006-2007 hSenid Software International (Pvt) Limited.
~    All Rights Reserved.
~
~    These materials are unpublished, proprietary, confidential source code of
~    hSenid Software International (Pvt) Limited and constitute a TRADE SECRET
~    of hSenid Software International (Pvt) Limited.
~
~    hSenid Software International (Pvt) Limited retains all title to and intellectual
~    property rights in these materials.
~
~
-->
<%--
  Created by IntelliJ IDEA.
  User: sachini
  Date: 7/31/18
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: sachini
  Date: 7/23/18
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Employee Details</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--<script type="text/javascript" src="styles/index.css"></script>--%>
    <script type="text/javascript" src="scripts/getPatterns.js"></script>

    <!--script src="webjars/jquery/1.9.1/jquery.min.js"></script-->

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
                <li><a href="pages/addEmployee.jsp">New Employee</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>

<br><br>
<div class="container">
    <div class="row">

        <input class="form-control" id="myInput" type="text" placeholder="Search.."><br>

        <div class="jumbotron text-center">
            <div class="table-responsive ">
                <div class="tbl-header">
                    <table class="table table-hover">
                        <thead>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Telephone</th>
                        <th></th>
                        <th></th>
                        </thead>

                    </table>
                </div>

                <div class="tbl-content " id="tbl-content">
                    <table class="table table-hover">
                        <tbody class="employee_info" id="employee_info " >

                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
<p id="demo"></p>

<!--footer-->
<footer class="container-fluid bg-4 text-center">
    <p>no 62-1, Elpitiya RD, Ambalangoda</p>
    <p>Contact num: 0772454265</p>
    <p>Copyright Ⓒ 2018</p>
</footer>
</body>
</html>
