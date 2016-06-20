<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 6/17/16
  Time: 5:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title></title>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="color: #000000;" >Score Page</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="#" style="color: #000000;"></a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <g:form controller="logout" action="index">
                <g:submitButton  style="margin-left: 70%; width: 130px; font-size: medium; margin-top: 1%;" class="btn btn-danger" name="Logout"></g:submitButton>
            </g:form>
        </ul>
    </div>
</nav>

<div class="container">
    <br><br>
    <div class="row">
        <div class="col-md-6 col-md-offset-3" style="width: 60%; margin-right: 40%; margin-left: 20%">
            <div class="panel panel-login">
                <div class="panel-heading">

                    <asset:image src="score.png" width="500"></asset:image>
                    <hr>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12" align="center">
                                <h1 style="color: forestgreen">${subject}</h1>

                                <h2>Current Score:</h2>
                                <h3 style="color: red">${score}</h3>
                        </div>

                        <g:link controller="subject" action="userMain" style="width: 60%; margin-right: 35%; margin-left: 45%"> Back to Home</g:link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>