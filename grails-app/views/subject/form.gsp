<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/19/16
  Time: 4:35 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title>Subject Add</title>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="color: #000000;" >User Home</a>
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
                       <h4>Add Subject</h4>

                    <hr>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12" align="center">
                            <label>Subject Name:</label>
                            <g:form controller="subject" action="save">

                                <g:textField name="subject_name">

                                </g:textField>
                                <br><br><br>
                                <g:actionSubmit  class="btn btn-primary" style="height: 40px; width: 40%; color: #ffffff; font-size: large" value="Save">

                                </g:actionSubmit>
                            </g:form>
                        </div>

                        <g:link controller="subject" action="index" style="width: 60%; margin-right: 35%; margin-left: 45%"> Back to Home</g:link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>