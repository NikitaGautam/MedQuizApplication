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

<div class="container">
    <br><br>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-login">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <g:form controller="subject" action="save">

                                <g:textField name="subject_name">

                                </g:textField>
                                <g:actionSubmit value="Save">

                                </g:actionSubmit>
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