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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Archivo+Black">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/localization/messages_zh.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/styles.min.signUp.css">
    <script src="https://ssl.captcha.qq.com/TCaptcha.js"></script>
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
    <div class="header-blue"><img src="https://turingcup-1257109822.cos.ap-shanghai.myqcloud.com/TuringCup-Imgs/turing%20logo.png" width="200" height="200" style="margin-top:60px;max-width:200px;max-height:200px;">
        <header></header>
        <h1 class="text-white" style="margin-top:30px;">参赛报名</h1>
    </div>
</div>
<div class="container" style="max-width:600px;margin-top:30px;margin-bottom:30px;text-align:center;">
    <form id="signUpForm" action="<%=request.getContextPath()%>/signUp/teamInfoUpload.action" method="post">
        <div class="table-responsive input-group" style="font-family:'Source Sans Pro', sans-serif;text-align:center;vertical-align:middle;">
            <table class="table table-striped table-hover">
                <tbody>
                <tr>
                    <td style="width:30%;vertical-align:middle;">队名<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td ><input name="teamName" id="teamName" class="form-control" type="text" placeholder="10个字符内的中文、英文字母、数字和下画线">
                        <p class="text-secondary" style="margin-bottom:0;">请输入合法合规的正常队名。<br></p>
                        <p id="teamNameNotification" class="notification" style="margin-bottom:0;"></p>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">队长姓名<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td>
                        <input class="form-control"  type="text" name="teamLeaderName" id="teamLeaderName">
                        <p id="teamLeaderNameNotification" class="notification" style="margin-bottom:0;"></p>
                    </td>
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
                    <td><input class="form-control" type="text" name="QQ" id="QQ" placeholder="7-11位QQ号码">
                        <p class="text-secondary" style="margin-bottom:0;">队伍常用QQ，用于比赛通知发布</p>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">EMail地址<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td><input class="form-control" type="text" name="EMailAddress" id="EMailAddress" placeholder="主流email地址">
                        <p class="text-secondary" style="margin-bottom:0;">队伍常用EMail，用于比赛通知发布<br></p>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:middle;">电话<span style="color:rgb(0,10,255);font-size:25px;">*</span>：</td>
                    <td><input class="form-control" type="text" name="telNumber" id="telNumber" placeholder="仅支持国内11位手机号码">
                        <p class="text-secondary" style="margin-bottom:0;">队伍常用电话，用于比赛通知发布<br></p>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <button class="btn btn-primary btn-lg" type="button" style="text-align:center;min-width:150px;" id="TencentCaptcha"
                      data-appid="2077933102"
                      data-cbfn="callback">报名</button>
    </form>
    <script>
        window.callback = function(res){
            console.log(res);
            // res（未通过验证）= {ret: 1, ticket: null}
            // res（验证成功） = {ret: 0, ticket: "String", randstr: "String"}
            if(res.ret === 0){
                var ticket = document.createElement("input");
                var form = document.getElementById("signUpForm");
                var randStr = document.createElement("input");
                ticket.type = "hidden";
                ticket.name = "ticket";
                ticket.value = res.ticket;
                randStr.type = "hidden";
                randStr.name = "randStr";
                randStr.value = res.randstr;
                form.appendChild(randStr);
                form.appendChild(ticket);
                $("#signUpForm").submit();
                return true;
            }
            else{
                alert("未通过验证码验证，请重试！");
                return false;
            }
        };

        // 前端验证机制
        $().ready(function () {
            $("#signUpForm").validate({
                rules:{
                    teamName: {
                        required: true,
                        maxlength: 10,
                        checkTeamName: true,
                        remote:{
                            url: "<%=request.getContextPath()%>/signUp/checkTeamName.action",
                            type: "post",
                            data:{
                                teamName: function () {
                                    return $("#teamName").val();
                                }
                            }
                        }
                    },
                    teamLeaderName:{
                        required: true,
                        maxlength: 10,
                        checkLeaderName: true
                    },
                    teamLeaderCollege:{
                        required: true,
                        maxlength: 10,
                        checkCollege: true
                    },
                    teamMemberOneName:{
                        maxlength: 10,
                        checkMemberOneName: true
                    },
                    teamMemberOneCollege:{
                        required: function () {
                            return document.getElementById("teamMemberOneName").value !== "";
                        },
                        checkCollegeOneAvailable: true,
                        maxlength: 10,
                        checkCollege: true
                    },
                    teamMemberTwoName:{
                        maxlength: 10,
                        checkMemberTwoName: true
                    },
                    teamMemberTwoCollege:{
                        required: function () {
                            return document.getElementById("teamMemberTwoName").value !== "";
                        },
                        checkCollegeTwoAvailable: true,
                        maxlength: 10,
                        checkCollege: true
                    },
                    QQ:{
                        required: true,
                        checkQQ: true

                    },
                    EMailAddress:{
                        required: true,
                        email: true
                    },
                    telNumber:{
                        required: true,
                        checkTelNumber:true
                    }
                },
                messages:{
                    teamName:{
                        required: "请输入队名",
                        maxlength: "请输入小于10个字符的队名",
                        remote: "队名已存在"
                    },
                    teamLeaderName:{
                        required: "请输入队长姓名",
                        maxlength: "请输入小于10个字符的姓名"
                    },
                    teamLeaderCollege:{
                        required: "请输入队长学校",
                        maxlength: "请输入小于10个字符"
                    },
                    teamMemberOneName:{
                        required: "请输入组员姓名",
                        maxlength: "请输入小于10个字符"
                    },
                    teamMemberOneCollege:{
                        required: "请输入组员学校",
                        maxlength: "请输入小于10个字符"
                    },
                    teamMemberTwoName:{
                        required: "请输入组员姓名",
                        maxlength: "请输入小于10个字符"
                    },
                    teamMemberTwoCollege:{
                        required: "请输入组员学校",
                        maxlength: "请输入小于10个字符"
                    },
                    QQ:{
                        required: "请输入QQ"
                    },
                    EMailAddress:{
                        required: "请输入Email地址",
                        email:"请输入有效的Email地址"
                    },
                    telNumber:{
                      required: "请输入电话号码"
                    }
                }
            })
        });

        jQuery.validator.addMethod("checkQQ", function(value, element) {
            var regex = /^[1-9]([0-9]{6,10})$/;
            return this.optional(element) || (regex.test(value));
        }, "请输入正确的QQ号！");

        jQuery.validator.addMethod("checkTelNumber", function(value, element) {
            var regex = /^0?(13|14|15|18|17|19)[0-9]{9}$/;
            return this.optional(element) || (regex.test(value));
        }, "请输入正确的国内11位手机号码");

        jQuery.validator.addMethod("checkTeamName", function(value, element) {
            var regex = /^[\w\u4e00-\u9fa5]{2,10}$/;
            return this.optional(element) || (regex.test(value));
        }, "请输入正确的队名！");

        jQuery.validator.addMethod("checkCollege", function(value, element) {
            var regex = /^[\w\u4e00-\u9fa5]{2,12}$/;
            return this.optional(element) || (regex.test(value));
        }, "请输入正确的学校名称！");

        jQuery.validator.addMethod("checkLeaderName", function(value, element) {
            if(value !== ""){
                var Member1 = $("#teamMemberOneName").val();
                var Member2 = $("#teamMemberTwoName").val();
                console.log(Member1);
                console.log(Member2);
                if(Member1 != null && Member1 !== ""){
                    if(this.optional(element) || Member1 === value){
                        return false;
                    }
                }
                if(Member2 != null && Member2 !== ""){
                    if(this.optional(element) || Member2 === value){
                        return false;
                    }
                }
                return true;
            }
            else{
                return true;
            }

        }, "当前姓名已存在表单内！");

        jQuery.validator.addMethod("checkMemberOneName", function(value, element) {
            if(value !== ""){
                var Member1 = $("#teamLeaderName").val();
                var Member2 = $("#teamMemberTwoName").val();
                if(Member1 != null && Member1 !== ""){
                    if(this.optional(element) || Member1 === value){
                        return false;
                    }
                }
                if(Member2 != null && Member2 !== ""){
                    if(this.optional(element) || Member2 === value){
                        return false;
                    }
                }
                return true;
            }
            else{
                return true;
            }

        }, "当前姓名已存在表单内！");

        jQuery.validator.addMethod("checkMemberTwoName", function(value, element) {
            if(value !== ""){
                var Member1 = $("#teamMemberOneName").val();
                var Member2 = $("#teamLeaderName").val();
                if(Member1 != null && Member1 !== ""){
                    if(this.optional(element) || Member1 === value){
                        return false;
                    }
                }
                if(Member2 != null && Member2 !== ""){
                    if(this.optional(element) || Member2 === value){
                        return false;
                    }
                }
                return true;
            }
            else{
                return true;
            }

        }, "当前姓名已存在表单内！");

        jQuery.validator.addMethod("checkCollegeOneAvailable", function(value, element) {
            if($("#teamMemberOneName").val() === ""){
                if(value !== ""){
                    return false;
                }
                else{
                    return true;
                }
            }
            else{
                return true;
            }
        }, "请先输入组员姓名");

        jQuery.validator.addMethod("checkCollegeTwoAvailable", function(value, element) {
            if($("#teamMemberTwoName").val() === ""){
                if(value !== ""){
                    return false;
                }
                else{
                    return true;
                }
            }
            else{
                return true;
            }
        }, "请先输入组员姓名");

    </script>
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

</body>

</html>
