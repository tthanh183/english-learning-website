
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<c:url var="formUrl" value="/login.html"/>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            width: 100%;
            background: url('/template/web/img/background-moutain.jpg') no-repeat;
            background-size: cover;
            background-position: center;

        }
        .header {
            margin-bottom: 0;
        }
        .login-layout .widget-box .widget-main {
            padding: 16px 36px 36px;
            position: relative;
            width: 360px;
            height: 330px;
            border: 2px solid rgba(255,255,255,.5);
            border-radius: 20px;
            backdrop-filter: blur(20px);
            box-shadow: 0 0 30px rgba(0,0,0,.5);
        }
        label.block.clearfix {
            padding-top: 8px;
        }
        .login-register {
            font-size: 0.9em;
            color: #162938;
            text-align: center;
            font-weight: 500;
            margin: 25px 0 10px;
        }

        .login-register p a {
            color: #162938;
            text-decoration: none;
            font-weight: 600;
        }

        .login-register p a:hover {
            text-decoration: underline;
        }
        .btn {
            position: relative;
            width: 100%;
            height: 45px;
            background: #162938;
            border: none;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1.4em;
            color: #fff;
            font-weight: 500;
        }
        .widget-main.error {
            height: 390px !important;
        }
    </style>
</head>
<body>
    <div id="login-box" class="login-box visible widget-box no-border" style="background: transparent; margin-top: 60px; border-radius: 60px; ">
        <div class="widget-body" style="background: transparent;">
            <div class="widget-main">
                <h3 class="header blue lighter bigger">
                    <i class="ace-icon fa fa-coffee green"></i>
                    <fmt:message key="label.test" bundle="${lang}"/>
                </h3>

                <div class="space-6"></div>

                <form action="${formUrl}" method="post">
                    <fieldset>
                        <c:if test="${not empty messageResponse}">
                            <div class="alert alert-block alert-${alert}">
                                <button type="button" class="close" data-dismiss="alert">
                                    <i class="ace-icon fa fa-times"></i>
                                </button>
                                    ${messageResponse}
                            </div>
                            <script>
                                const widgetMain = document.querySelector('.widget-main');

                                widgetMain.classList.add('error');

                            </script>
                        </c:if>
                        <label class="block clearfix">
                            <span class="block input-icon input-icon-right">
                                <input type="text" class="form-control" placeholder="Email" name="pojo.email"/>
                                <i class="ace-icon fa fa-user"></i>
                            </span>
                        </label>

                        <label class="block clearfix">
                            <span class="block input-icon input-icon-right">
                                <input type="password" class="form-control" placeholder="Password" name="pojo.password"/>
                                <i class="ace-icon fa fa-lock"></i>
                            </span>
                        </label>

                        <div class="space"></div>

                        <div class="clearfix">
                            <button type="submit" class="btn">
                                Login
                            </button>
                        </div>


                        <div class="space-4"></div>

                        <div class="login-register">
                            <p style="font-size: 1.2em;">Don't have a account? <a href="/registration.html" class="register-link">Register</a></p>
                        </div>
                    </fieldset>
                </form>
            </div><!-- /.widget-main -->
        </div><!-- /.widget-body -->
</div><!-- /.login-box -->
</body>
</html>
