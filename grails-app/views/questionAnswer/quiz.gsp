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
    <div class="btn-group-lg btn-group" data-toggle="buttons">
        <row>
            <div class="col-lg-6">
                <label class="btn btn-primary">
                    <input type="radio" name="options" id="option1" value="1"> ${question.ans1}
                </label>
            </div>
            <!--<span>or</span>-->
            <div class="col-lg-6">
                <label class="btn btn-primary">
                    <input type="radio" name="options" id="option2" value="2"> "${question.ans2}"
                </label>
            </div>
            <div class="col-lg-6">
                <label class="btn btn-primary">
                    <input type="radio" name="options" id="option2" value="3"> "${question.ans3}"
                </label>
            </div>
            <div class="col-lg-6">
                <label class="btn btn-primary">
                    <input type="radio" name="options" id="option2" value="4"> "${question.ans3}"
                </label>
            </div>

            <g:hiddenField name="index" value="${index}"/>
            <g:hiddenField name="randomQuestions" value="${randomQuestions}"/>
        </row>
    </div>
    <input type = "submit" class="btn btn-primary" style="height: 40px; width: 40%; color: #ffffff; font-size: large" value="Submit & Next">

</g:form>

</body>
</html>