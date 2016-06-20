<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/19/16
  Time: 5:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title></title>
</head>

<body>
%{--<g:if test="${flash.message}">--}%
%{--<div>${flash.message}</div></g:if>--}%
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="color: #000000;" >User</a>
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
    <div class="row" >
        <div class="col-md-6 col-md-offset-3" style="width: 70%; margin-right: 40%; margin-left: 15%" >
            <div class="panel panel-login" style="background-color: #f5f5f5">
                <div class="panel-heading" style="background-color: #f5f5f5">
                    <h4>Add Question</h4>

                    <hr>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12" >
                            <g:form controller="questionAnswer" class="form">
                                <div class="form-group">
                                    <label for="subject">Category:</label>
                                        <g:select name="subject" from="${subject}" optionValue="subject_name" optionKey="id" class="form-control"></g:select>
                                </div>
                                <div class="form-group">
                                    <label>Question:</label>
                                    <g:textField name="question" id="question" tabindex="1" class="form-control" placeholder="Enter Question"></g:textField>
                                    </div>
                                <div class="form-group">
                                    <label>Answer1:</label>
                                    <g:textField name="ans1" id="ans1" tabindex="1" class="form-control" placeholder="Enter Answer 1"></g:textField>
                                </div>
                                <div class="form-group">
                                    <label>Answer2:</label>
                                    <g:textField name="ans2" id="ans2" tabindex="1" class="form-control" placeholder="Enter Answer 2"></g:textField>
                                </div>
                                <div class="form-group">
                                    <label>Answer3:</label>
                                    <g:textField name="ans3" id="ans3" tabindex="1" class="form-control" placeholder="Enter Answer 3"></g:textField>
                                </div>
                                <div class="form-group">
                                    <label>Answer4:</label>
                                    <g:textField name="ans4" id="ans4" tabindex="1" class="form-control" placeholder="Enter Answer 4"></g:textField>
                                </div>
                                <div class="form-group" >
                                    <label>Select Correct Answer:</label><br>
                                    <g:each in="${1..4}" var="statement" status="i">
                                        ${statement} <g:checkBox name="correct" value="${statement}" checked="" />
                                    </g:each>
                                </div>


                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            %{--<g:actionSubmit name="ques-submit" id="question-submit" tabindex="4" class="form-control btn btn-register" value="Submit"></g:actionSubmit>--}%
                                     <g:actionSubmit action="saveForm"  class="btn btn-primary" style="height: 40px; width: 40%; color: #ffffff; font-size: large; width: 60%; margin-right: 35%; margin-left: 20%;" value="Save"></g:actionSubmit>
                                                   %{--<input type="submit" name="submit" value="submit">--}%
                                        </div>
                                    </div>
                                </div>
                                <g:link controller="subject" action="index" style="width: 60%; margin-right: 35%; margin-left: 45%"> Back to Home</g:link>

                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

