<%--
  Created by IntelliJ IDEA.
  User: Zwiebeln_Chan
  Date: 2018/10/7
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>报名成功！</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/styles.min.signUpSuccess.css">
</head>

<body>
<nav class="navbar navbar-light navbar-expand-md fixed-top" style="background:linear-gradient(135deg, #172a74, #21a9af);/*background-repeat:repeat;*/padding-top:0;padding-bottom: 0">
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
    <div class="header-blue" style="text-align:center;"><img src="https://turingcup-1257109822.cos.ap-shanghai.myqcloud.com/TuringCup-Imgs/success.png" style="max-width:200px;max-height:125px;margin-top:60px;">
        <h1 class="text-white" style="text-align:center;margin-top:20px;">报名成功</h1>
    </div>
</div>
<div class="container" style="text-align:center;margin-top:20px;max-width: 600px;">
    <h2>您的报名信息如下</h2>
    <p>本数据为数据库查询数据，请截图保存。如发现有误，请及时联系大赛工作人员</p>
    <div class="table-responsive">
        <table class="table table-striped">
            <tbody>
            <tr>
                <td style="width:30%;">队伍ID：</td>
                <td>${requestScope.teamID}</td>
            </tr>
            <tr>
                <td>队名：</td>
                <td>${requestScope.teamName}</td>
            </tr>
            <tr>
                <td>队伍成员：</td>
                <td>${requestScope.teamMember}</td>
            </tr>
            <tr>
                <td>报名时间：</td>
                <td>${requestScope.signUpTime}</td>
            </tr>
            </tbody>
        </table>
    </div>
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
