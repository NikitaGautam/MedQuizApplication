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
<div class="container" style="margin-left: 35%; margin-right: 30%; width: 100%">
    <div class="row">
        <div class="col-xs-18 col-sm-6 col-md-3">
            <div class="thumbnail">
                <asset:image src="score.png" width="500"></asset:image>
                <div class="caption">
                    <h4>Thumbnail label</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
                    <a href="#" class="btn btn-default btn-xs pull-right" role="button">
                        <i class="glyphicon glyphicon-edit"></i></a>
                <a href="#" class="btn btn-info btn-xs" role="button">Button</a>
                <a href="#" class="btn btn-default btn-xs" role="button">Button</a>
                </div>
            </div>
        </div>




    </div><!--/row-->
</div><!--/container -->
</body>
</html>