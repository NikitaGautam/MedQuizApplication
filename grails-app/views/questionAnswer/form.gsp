<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/19/16
  Time: 5:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
   <g:form controller="questionAnswer" action="save">
       <g:select name="subject_name" from="${subject}"></g:select>
       <g:textField name="question"></g:textField>
       <g:textField name="ans1"></g:textField>
       <g:textField name="ans2"></g:textField>
       <g:textField name="ans3"></g:textField>
       <g:textField name="ans4"></g:textField>
       %{--<g:each in="{1..4}" status="i">--}%
           %{--<g:checkBox name="" value="i"></g:checkBox>--}%
       %{--</g:each>--}%
   <g:actionSubmit value="save"></g:actionSubmit>
   </g:form>
</body>
</html>