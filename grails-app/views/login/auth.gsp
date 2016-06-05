<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>

</head>

<body>
<div style="width: 100%; background-color: darkblue; color: #ffffff">
    <br><h3 align="center">Medical Quiz Application</h3><br>
</div>
<div class="container">
    <br><br>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-login">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-6">
                            <a href="#" class="active" id="login-form-link">Login</a>
                        </div>

                        <div class="col-xs-6">
                            <a href="#" id="register-form-link">Register</a>
                        </div>
                    </div>

                    <hr>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="login-form" action='${postUrl}'  method="post" role="form" style="display: block;">
                                <g:if test='${flash.message}' style="background-color: red">
                                    <div class='login_message'>${flash.message}</div>
                                </g:if>
                                <div class="form-group">
                                    <input type="text" name="j_username" id="usernameL" tabindex="1" class="form-control" placeholder="Username" value="">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="j_password" id="passwordL" tabindex="2" class="form-control" placeholder="Password">
                                </div>
                                <div class="form-group text-center">
                                    <p id="remember_me_holder">
                                        <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                        <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                                    </p>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            %{--<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">--}%
                                            <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'  id="login-submit" tabindex="4" class="form-control btn btn-login"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <a href="" tabindex="5" class="forgot-password">Forgot Password?</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>

                            <g:form controller="user" action="register" class="register-form" method="post" role="form">
                                <div class="form-group">
                                    <input type="text" name="fname" id="fname" tabindex="1" class="form-control" placeholder="First Name" value="">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="lname" id="lname" tabindex="1" class="form-control" placeholder="Last Name" value="">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="confirmpassword" id="confirmpassword" tabindex="2" class="form-control" placeholder="Confirm Password">
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
                                        </div>
                                    </div>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type='text/javascript'>
$(function() {
	//document.forms['loginForm'].elements['j_username'].focus();
    $('#register-submit').on('click',function(){


    });


});
</script>
</body>
</html>
