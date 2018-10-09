<%--
  Created by IntelliJ IDEA.
  User: Zwiebeln_Chan
  Date: 2018/10/8
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TuringCupWebSite</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Baloo+Paaji">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/styles.min.css">
</head>

<body data-spy="scroll" data-target="#myScrollspy">
<div>
    <div class="header-blue"><img src="https://turingcup-1257109822.cos.ap-shanghai.myqcloud.com/TuringCup-Imgs/turing%20logo.png" style="width:200px;height:200px;margin-top:60px;">
        <h1 style="margin-top:8px;margin-right:auto;margin-left:auto;color:rgb(255,255,255);font-family:'Source Sans Pro', sans-serif;">中兴·图灵杯</h1>
    </div>
</div>
<!--
<div class="row">
    <div class="col-xs-3" id="myScrollspy">
        <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
            <li class="active"><a href="#turingCupIntroduction">图灵杯简介</a></li>
            <li><a href="#schedule">赛程安排</a></li>
            <li><a href="#signUp">报名参赛</a></li>
        </ul>
    </div>
</div>
-->
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
<div class="highlight-blue" style="background-color:rgb(252,238,217);text-align:center;">
    <div class="container">
        <div class="intro" id="turingCupIntroduction">
            <h2 class="text-center" style="color:rgb(79,79,79);">图灵杯简介</h2>
            <p class="text-left" style="color:rgb(76,76,76);width:100%;text-align:center;"><br>&nbsp; &nbsp; &nbsp; &nbsp; “中兴·图灵杯”程序设计大赛（原名“图灵杯”程序设计大赛）是南京理工大学计算机学院的原创性特色品牌活动。<br>&nbsp; &nbsp; &nbsp; &nbsp; 从2001年举办第一届“图灵杯”程序设计大赛起，迄今已成功地举办十七届，受到全校工科专业学生的欢迎。<br>&nbsp; &nbsp; &nbsp; &nbsp; 比赛平台由南京理工大学计算机学院科协成员独立开发完成，组织运作由计算机学院学生组织协作开展。<br></p>
        </div>
        <div class="buttons"></div>
    </div>
</div>

<div class="article-list">
    <div class="container">
        <div class="intro" id="schedule">
            <h2 class="text-center">日程安排</h2>
            <p class="text-center">更多信息请加入官方QQ群：636714894<br>或关注微信公众号@南理工计算机院科协</p>
        </div>
        <div class="row articles">
            <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="https://turingcup-1257109822.cos.ap-shanghai.myqcloud.com/TuringCup-Imgs/desk.jpg"></a>
                <h3 class="name">宣讲会行程</h3>
                <p class="description">南京理工大学站，10月13日<br>南京农业大学站，10月20日<br>南京航空航天大学站，10月21日<br></p><a href="#" class="action"><i class="fa fa-arrow-circle-right"></i></a></div>
            <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="https://turingcup-1257109822.cos.ap-shanghai.myqcloud.com/TuringCup-Imgs/building.jpg"></a>
                <h3 class="name">提交方式及时限</h3>
                <p class="description">初赛代码提交截止时间：11月9日<br>请按照QQ群内文件指示完成代码编写<br>将指定导出文件发送至邮箱<br></p><a href="#" class="action"><i class="fa fa-arrow-circle-right"></i></a></div>
            <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="https://turingcup-1257109822.cos.ap-shanghai.myqcloud.com/TuringCup-Imgs/loft.jpg"></a>
                <h3 class="name">比赛日期</h3>
                <p class="description">初赛，11月10日~11日<br>复赛，11月24日~25日<br>决赛晚会，12月8日<br></p><a href="#" class="action"><i class="fa fa-arrow-circle-right"></i></a></div>
        </div>
    </div>
</div>
<div class="highlight-phone">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="intro" id="signUp">
                    <h2>参加比赛</h2>
                    <p>参与中兴·图灵杯比赛，请在这里报名。填写有关信息后，工作人员会向您确认有关报名信息，接下来您只需要按时提交参赛代码即可。</p><a class="btn btn-primary" role="button" href="<%=request.getContextPath()%>/signUp/signUpPage.action">报 名</a></div>
            </div>
            <div class="col-sm-4" style="margin-top:auto;">
                <div class="d-none d-md-block iphone-mockup"></div><img src="https://turingcup-1257109822.cos.ap-shanghai.myqcloud.com/TuringCup-Imgs/1.png" style="margin-top:30px;width:200px;"></div>
        </div>
    </div>
</div>
<div class="brands" style="text-align:center;"></div>
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

</body>

</html>