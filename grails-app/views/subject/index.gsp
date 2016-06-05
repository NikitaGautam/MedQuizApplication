<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/19/16
  Time: 3:29 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin Home</title>
    <meta name='layout' content='main'/>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#"  style="color: black">Admin Home</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="#"  style="color: black"></a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <g:form controller="logout" action="index">
                <g:submitButton  style="margin-left: 70%; width: 180px;margin-top: 1%; font-size: large;" class="btn btn-danger" name="Logout"></g:submitButton>
            </g:form>
        </ul>
    </div>
</nav>
<div class="container-full">

    <div class="col-lg-12 text-center v-center">
        <h1>Welcome Admin</h1>
        <br><br>
        <form class="col-lg-12">
            <div class="input-group" style="width:340px;text-align:center;margin:0 auto;">
                  <g:link controller="subject" action="form" name="addSub" class="btn btn-primary" style="height: 65px; width: 100%; color: #ffffff; font-size: large">Add Subject</g:link><br><br>
                  <g:link controller="questionAnswer" action="form" name="addQues" class="btn btn-primary" style="height: 65px; width: 100%; color: #ffffff; font-size: large">Add Question</g:link>

            </div>
        </form>
    </div>

</div>
</body>


<style>
html,body {
    background-color:#ffffff;
}

h1 {
    font-family: Arial,sans-serif
font-size:80px;
    color:#000000;
}


/* Custom container */
.container-full {
    /*margin: 0 auto;*/
    min-width: 100%;
    min-height:100%;

    color:#000000;
    overflow:hidden;
}

.container-full a {
    color:#000000;
    text-decoration:none;
}

.v-center {
    margin-top:0%;
}
</style>
</html>