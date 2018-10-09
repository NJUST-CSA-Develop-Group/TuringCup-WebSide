<%--
  Created by IntelliJ IDEA.
  User: Zwiebeln_Chan
  Date: 2018/9/30
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>图灵杯报名</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Archivo+Black">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/styles.min.signUp.css">
</head>

<body>
<nav class="navbar navbar-light navbar-expand-md fixed-top" style="background:linear-gradient(135deg, #172a74, #21a9af);/*background-repeat:repeat;*/height:40px;">
    <div class="container-fluid"><a class="navbar-brand text-primary" href="<%=request.getContextPath()%>/signUp/toMainPage.action"><strong>Main Page</strong></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav">
                <li class="nav-item" role="presentation"><a class="nav-link text-white active" href="<%=request.getContextPath()%>/signUp/signUpPage.action">Sign Up</a></li>
            </ul>
        </div>
    </div>
</nav>
<div>
    <div class="header-blue"><img src="https://turingcup-1257109822.cos.ap-shanghai.myqcloud.com/TuringCup-Imgs/turing%20logo.png" width="200" height="200" style="margin-top:30px;max-width:200px;max-height:200px;">
        <header></header>
        <h1 class="text-white" style="margin-top:30px;">参赛报名</h1>
    </div>
</div>
<div class="container" style="max-width:1000px;margin-top:30px;margin-bottom:30px;text-align:center;">
    <form action="<%=request.getContextPath()%>/signUp/teamInfoUpload.action" method="post">
        <div class="table-responsive" style="font-family:'Source Sans Pro', sans-serif;text-align:center;vertical-align:middle;">
            <table class="table table-striped table-hover">
                <tbody>
                <tr>
                    <td style="width:30%;vertical-align:middle;">队名<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td style="padding:2px;"><input name="teamName" id="teamName" class="form-control" type="text">
                        <p class="text-secondary" style="margin-bottom:0;">请输入合法合规的正常队名。大赛组委会有权因队名问题取消报名资格。<br></p>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">队长姓名<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td><input class="form-control"  type="text" name="teamLeaderName" id="teamLeaderName"></td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">队长学校<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td><input class="form-control" type="text" name="teamLeaderCollege" id="teamLeaderCollege"></td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">队员一姓名：</td>
                    <td><input class="form-control" type="text" name="teamMemberOneName" id="teamMemberOneName"></td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">队员一学校：</td>
                    <td><input class="form-control" type="text" name="teamMemberOneCollege" id="teamMemberOneCollege"></td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">队员二姓名：</td>
                    <td><input class="form-control" type="text" name="teamMemberTwoName" id="teamMemberTwoName"></td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">队员二学校：</td>
                    <td><input class="form-control" type="text" name="teamMemberTwoCollege" id="teamMemberTwoCollege"></td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">QQ<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td><input class="form-control" type="text" name="QQ" id="QQ">
                        <p class="text-secondary" style="margin-bottom:0;">请输入队伍的常用QQ，用于比赛通知发布</p>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">EMail地址<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td><input class="form-control" type="text" name="EMailAddress" id="EMailAddress">
                        <p class="text-secondary" style="margin-bottom:0;">请输入队伍的常用EMail，用于比赛通知发布<br></p>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">电话<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td><input class="form-control" type="text" name="telNumber" id="telNumber">
                        <p class="text-secondary" style="margin-bottom:0;">请输入队伍的常用电话，用于比赛通知发布<br></p>
                    </td>
                </tr>
                </tbody>
            </table>
        </div><button class="btn btn-primary btn-lg" type="submit" style="text-align:center;min-width:150px;">报名</button></form>
</div>
<div class="footer-clean">
    <footer>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-4 col-md-3 col-lg-5 item" style="padding-right:15px;">
                    <h3>比赛支持</h3>
                    <ul>
                        <li><a href="#">赞助：中兴通讯</a>有限公司</li>
                        <li><a href="#">主办：南京理工大学计算机科学与工程学院</a></li>
                        <li><a href="#">承办：南京理工大学计算机科学与工程学院大学生科协</a></li>
                    </ul>
                </div>
                <div class="col-lg-1 offset-lg-0" style="width:10px;padding-left:15px;height:50px;"></div>
                <div class="col-sm-4 col-md-3 item">
                    <h3>联系我们</h3>
                    <ul>
                        <li><a href="#">邮箱：njust_cse_kexie@163.com</a></li>
                        <li><a href="#">官方QQ群：636714894<br></a></li>
                        <li><a href="#">微信公众号：南理工计算机院科协</a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="clearfix"></div>
                <div class="clearfix"></div>
            </div>
        </div>
    </footer>
</div>
<div class="footer-dark">
    <footer>
        <div class="container">
            <p class="copyright" style="padding-top:0;">CSA, NJUST © 2018</p>
        </div>
    </footer>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>
