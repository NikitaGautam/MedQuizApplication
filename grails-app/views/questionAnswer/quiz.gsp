<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/31/16
  Time: 3:35 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title></title>
</head>

<body >
%{--<div class="progress">--}%
    %{--<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">--}%
        %{--<span class="sr-only">60% Complete</span>--}%
    %{--</div>--}%
%{--</div>--}%

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="color: #000000;" >Quiz</a>
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

<div class="container" >
    <br><br>
    <div class="row">
        <div class="col-md-6 col-md-offset-3" style="width: 80%; margin-right: 20%; margin-left: 13%">
            <div class="panel panel-login">
                <div class="panel-body">
                    <div class="panel-heading">
                        <h3 align="center">Questions ${subject}</h3>
                        <g:hiddenField name="subject" value="${subject}"></g:hiddenField>
                        <hr>
                    </div>
                    <div class="row">
                        <div class="col-lg-12" align="center">
                            <g:form controller="questionAnswer" action = "quiz" class="form">
                                <g:set var="question" value="${randomQuestions.get(index)}"/>
                                <div class="panel-heading">
                                    <h2 class="question">${question.question}</h2>
                                    <hr>
                                </div>

                                <div class="btn-group-lg btn-group" data-toggle="buttons" id="check" style="width: auto">
                                    <row>
                                        <div class="col-lg-6" >
                                            <label class="btn btn-primary">
                                                <g:radio name="options"  value="1"></g:radio> ${question.ans1}
                                            </label>
                                        </div>
                                        <!--<span>or</span>-->
                                        <div class="col-lg-6">
                                            <label class="btn btn-primary">
                                                <g:radio name="options" value="2"> </g:radio>  ${question.ans2}
                                            </label>
                                        </div>
                                        <br><br>
                                        <div class="col-lg-6">
                                            <label class="btn btn-primary">
                                                <g:radio name="options" value="3"> </g:radio>  ${question.ans3}
                                            </label>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="btn btn-primary">
                                                <g:radio name="options" value="4"> </g:radio>  ${question.ans3}
                                            </label>
                                        </div>

                                        <g:hiddenField name="index" value="${index}"/>
                                        <g:hiddenField name="randomQuestions" value="${randomQuestions}"/>
                                        <g:hiddenField name="score" value="${score}"/>

                                    </row>
                                </div>

                                <br><br>
                                <input id="sub" type = "submit" class="btn btn-success" style="height: 40px; width: 40%; color: #ffffff; font-size: large" value="Submit & Next">
                                <br><br>
                            </g:form>

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