<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <title>登录页面</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/xcConfirm.js"></script>
    <link rel="stylesheet" type="text/css" href="css/materialize.css"/>
    <link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
    <style type="text/css">
        html,
        body {
            height: 100%;
        }

        html {
            display: table;
            margin: auto;
        }

        body {
            display: table-cell;
            vertical-align: middle;
            color: #404d5b;
        }

        .margin {
            margin: 0 !important;
        }

        .card-panel {
            min-width: 350px;
        }
    </style>
    <script>
        $(function () {
            $("#btnlogin").click(function () {
                var account = $("#account").val();
                var password = $("#password").val();
                if (account.length <= 0) {
                    var txt = "请输入账号！";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
                    return;
                }
                if (password.length <= 0) {
                    var txt = "请输入密码！";
                    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.info);
                    return;
                }
            })
        })
    </script>
</head>
<body class="red">
<div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
        <form class="login-form">
            <div class="row">
                <div class="input-field col s12 center">
                    <img src="http://w3lessons.info/logo.png" alt="" class="responsive-img valign profile-image-login"
                         style="display: none">
                    <p class="center login-form-text">登录页面</p>
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-social-person-outline prefix"></i>
                    <input class="validate" id="account" type="text">
                    <label for="account" class="center-align">Account</label>
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-action-lock-outline prefix"></i>
                    <input id="password" type="password">
                    <label for="password">Password</label>
                </div>
            </div>
            <div class="row" style="display: none">
                <div class="input-field col s12 m12 l12  login-text">
                    <input type="checkbox" id="remember-me"/>
                    <label for="remember-me">记住我</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <a class="btn waves-effect waves-light col s12" id="btnlogin">登　录</a>
                </div>
            </div>
            <div class="row" style="display: none">
                <div class="input-field col s6 m6 l6">
                    <p class="margin medium-small"><a href="register.html">现在注册!</a></p>
                </div>
                <div class="input-field col s6 m6 l6">
                    <p class="margin right-align medium-small"><a href="forgot-password.html">忘记密码?</a></p>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
