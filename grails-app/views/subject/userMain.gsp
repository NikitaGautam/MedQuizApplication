<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/30/16
  Time: 8:05 PM
--%>

<%@ page import="medical.User; medical.Subject" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title></title>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <g:link class="navbar-brand" href="#" style="color: #000000;" >User</g:link>
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
<div class="container-full">

    <div class="col-lg-12 text-center v-center">
               <h1>Medical Quiz</h1>
                <p class="lead">Choose A Category To Play The Quiz</p>
                <br><br>
                <form class="col-lg-12">
                    <div class="input-group" style="width:340px;text-align:center;margin:0 auto;">
                      <g:each in="${medical.Subject.all}" var="subject">
                          <g:link controller="questionAnswer" action="quiz" params="[id: subject.id]"  class="btn btn-primary" style="height: 65px; width: 100%; color: #ffffff; font-size: large">${subject.subject_name}</g:link><br><br>
                      </g:each>

                    </div>
                </form>
            </div>

    </div> <!-- /container full -->


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

</body>
</html>