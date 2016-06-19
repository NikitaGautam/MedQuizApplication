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

<body>
%{--<div class="progress">--}%
    %{--<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">--}%
        %{--<span class="sr-only">60% Complete</span>--}%
    %{--</div>--}%
%{--</div>--}%
<g:form controller="questionAnswer" action = "quiz" class="form">


    <g:set var="question" value="${randomQuestions.get(index)}"/>
    <h1 class="question">${question.question}</h1>
    <div class="btn-group-lg btn-group" data-toggle="buttons" id="check">
        <row>
            <div class="col-lg-6">
                <label class="btn btn-primary">
                    <g:radio name="options"  value="1"></g:radio> ${question.ans1}
                </label>
            </div>
            <!--<span>or</span>-->
            <div class="col-lg-6">
                <label class="btn btn-primary">
                    <g:radio name="options" value="2"> </g:radio> ${question.ans2}
                </label>
            </div>
            <div class="col-lg-6">
                <label class="btn btn-primary">
                    <g:radio name="options" value="3"> </g:radio> ${question.ans3}
                </label>
            </div>
            <div class="col-lg-6">
                <label class="btn btn-primary">
                    <g:radio name="options" value="4"> </g:radio>${question.ans3}
                </label>
            </div>

            <g:hiddenField name="index" value="${index}"/>
            <g:hiddenField name="randomQuestions" value="${randomQuestions}"/>
            <g:hiddenField name="isCorrect" value="${isCorrect}"/>

        </row>
    </div>


    <input id="sub" type = "submit" class="btn btn-primary" style="height: 40px; width: 40%; color: #ffffff; font-size: large" value="Submit & Next">

</g:form>
<br><br>

<g:link name="homeBack" controller="subject" action="userMain">Back To Home</g:link>

</body>
</html>