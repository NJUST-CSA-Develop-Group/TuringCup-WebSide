<%--
  Created by IntelliJ IDEA.
  User: Zwiebeln_Chan
  Date: 2018/11/6
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图灵杯初赛直播</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Archivo+Black">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/styles.min.matchLive.css">
</head>
<body>
<div>
    <div class="header-blue" style="padding-bottom:0;">
        <nav class="navbar navbar-light navbar-expand-md fixed-top" style="background:linear-gradient(135deg, #172a74, #21a9af);/*background-repeat:repeat;*/padding-top:0;padding-bottom: 0;">
            <div class="container-fluid"><a class="navbar-brand text-primary" href="<%=request.getContextPath()%>/signUp/toMainPage.action"><strong>Main Page</strong></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                        class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li class="nav-item" role="presentation"><a class="nav-link text-white active" href="<%=request.getContextPath()%>/signUp/signUpPage.action">Sign Up</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link text-white active" href="<%=request.getContextPath()%>/signUp/toLive.action">Match Live</a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <header></header>
    </div>
</div>
<div>
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin-top:40px;margin-bottom:20px;">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title" style="padding-bottom:10px;"><strong>比赛直播</strong></h4>
                        <div class="live" >
                            <iframe id="player" src="https://live.bilibili.com/Html5/index?cid=23058" width="90%" height="90%"></iframe>
                        </div>
                        <h6 class="text-muted card-subtitle mb-2" style="padding-top:10px;">第十一届中兴·图灵杯初赛</h6>
                        <p class="card-text">初赛共有两轮。首轮共32场比赛，在每场比赛中获得第一名的队伍将直接晋级复赛，第二、三名进行第二轮比赛。第二轮比赛共有16场，每场比赛的第一、二名将晋级复赛。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
    <div class="container">
        <div class="row">
            <div class="col" style="background-color:#afd4f7;background-size:auto;/*background-repeat:repeat;*/">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"><strong>比赛中</strong></h4>
                        <p class="card-text">当前比赛的队伍</p>
                        <div class="col-md-12" style="padding-top:25px;">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>角色一</th>
                                        <th>角色二</th>
                                        <th>角色三</th>
                                        <th>角色四</th>
                                    </tr>
                                    </thead>
                                    <tbody id="current">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col" style="background-color:#afd4f7;background-size:auto;/*background-repeat:repeat;*/">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"><strong>比赛结果</strong></h4>
                        <p class="card-text">每场比赛结束后，结果将在下方公示，名次以队伍ID号展示</p>
                        <div class="col-md-12" style="padding-top:25px;">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>场次</th>
                                        <th>第一名</th>
                                        <th>第二名</th>
                                        <th>第三名</th>
                                        <th>第四名</th>
                                    </tr>
                                    </thead>
                                    <tbody id="data">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
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

<script>
    var ws = new WebSocket('ws://212.64.28.81:3000');
    ws.onmessage = (ev) => {
        data = JSON.parse(ev.data);
        if (data.action === 'result') {
            let elem = document.createElement('tr');
            elem.innerHTML += '<td>' +  data.match + '<td>';
            for (let i = 1; i <= 4; i++) {
                for(let j = 0; j < 4; j++){
                    if(data.rank[j] === i){
                        elem.innerHTML += '<td>' + data.id[data.rank[j]] + '</td>';
                        break;
                    }
                }
            }
            console.log(data.canceled);
            if (data.canceled) {
                elem.innerHTML += '<td>作废</td>'
            } else {
                elem.innerHTML += '<td></td>'
            }
            elem.matchIndex = data.match;
            for (let el of document.getElementById('data').children) {
                if (el.matchIndex === elem.matchIndex - 1) {
                    el.before(elem);
                    return
                }
            }
            document.getElementById('data').append(elem)
            //document.getElementById('current').after(elem)
        } else if (data.action === 'now') {
            let elem = document.getElementById('current');
            elem.innerHTML = '';
            elem.innerHTML += '<td>' + data.player1 + '</td>';
            elem.innerHTML += '<td>' + data.player2 + '</td>';
            elem.innerHTML += '<td>' + data.player3 + '</td>';
            elem.innerHTML += '<td>' + data.player4 + '</td>';
            elem.innerHTML += '<td>当前</td>';
            elem.matchIndex = data.index
        }
        //document.getElementById('data').innerText += ev.data + '\n'
        console.log(data)
    };
    ws.onopen = () => {
        ws.send('history');
        ws.send('now');
    }
</script>
</body>
</html>
