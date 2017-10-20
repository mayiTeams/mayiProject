<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <title>系统网页框架</title>
    <meta charset="utf-8">
    <style type="text/css">
    html,
    body {
        margin: 0;
        padding: 0;
        overflow-x: hidden
    }

    div a {
        text-decoration: none;
    }

    .tag {
        width: 100%;
        height: 30px;
        background-color: #f7f7f7;
        line-height: 30px;
    }

    .header img {
        vertical-align: middle;
    }

    #img-1 {
        vertical-align: middle;
        margin-left: 200px;
    }

    #img-2 {
        vertical-align: middle;
        margin-left: 20px;
    }

    .menu {
        margin: 30px;
        color: yellow;
    }

    .header {
        width: 100%;
        height: 10%;
        margin-left: 200px;
        font-size: 30px;
    }

    .home {
        width: 100%;
        height: 40px;
        background: #0098e0;
        margin-top: 10px;
    }

    .left-menu {
        width: 15%;
        height: 800px;
        margin-left: 250px;
        background: #eee;
        color: #666;
        margin-top: 30px;
        position: absolute;
        border-radius: 15px;
    }

    .tag-1 {
        color: #0298E5;
        font-weight: bold;
        font-size: 20px;
    }

    .tag-2 {
        float: right;
        margin-right: 200px;
    }

    .home a {
        margin-left: 200px;
        line-height: 40px;
        color: #ffffff;
    }

    .infor a {
        margin-top: 50px;
        color: #767676;
    }

    .infor div:hover {
        background: #ffffff;
    }

    .maininfo{
    	margin-top: 100px;
    	margin-left: 680px;

    }
    .maininfo img{
        width: 1000px;
        height: 230px;
    }
    .titleA{
        font-size: 40px;
        margin-top: -30px;
       margin-left: 350px;
       color: #11C2EE;
    }
    .infoA{     
        font-weight:900;
    }
    .maininfo img:hover {
        transform: scale(1.1, 1.1);
        opacity: 0.9;
    }
    :hover{transition:1s}
    </style>
</head>

<body>
    <div>
        <div class="tag">
            <img id="img-1" src="images/1.png" alt=""><a href="">宜信官网</a> <img id="img-2" src="images/2.png" alt=""><span class="tag-1">xxx-xxx-xx</span><span class="tag-2">欢迎您，${user.getUsername()} <a href="home-page">&nbsp;
					&nbsp;退出</a></span>
        </div>
        <div class="header">
            <img src="images/logo.png"> 宜人贷理财账户管理系统
        </div>
        <div class="home">
            <a href="myAccount">返回我的账户首页</a>
        </div>
        <div class="left-menu">
            <div class="infor">
                <div class="menu">
                    <a href="user-info">基本信息</a>
                </div>
                <div class="menu">
                    <a href="rechargeAndWithdrow">借款出借</a>
                </div>
                <div class="menu">
                    <a href="payment">支付单</a>
                </div>
                <div class="menu">
                    <a href="fund-flow">资金流水</a>
                </div>
                <div class="menu">
                    <a href="risk-investment-analyse">投资风险等级测评</a>
                </div>
                <div class="menu">
                    <a href="changePassword">修改密码</a>
                </div>
            </div>
        </div>
    </div>
    <div class="maininfo">
    <div class="titleA">欢迎来到宜人贷！</div>
    <div><img src="images/info1.jpg"></div>
    <div><img src="images/info2.jpg"></div>

        <div class="infoA">1、理财是理一生的财，不是解决燃眉之急的金钱问题而已，而是一个可持续循环的过程。
            <br> 2、理财是现金流量管理，每一个人一出生就需要用钱（现金流出）、也需要赚钱来产生现金流入，因此不管是否有钱，每一个人都需要理财。
            <br> 3、理财也涵盖了风险管理。因为未来的更多流量具有不确定性，包括人身风险、财产风险与市场风险，都会影响到现金流入（收入中断风险）<br>或现金流出（费用递增风险）。
        </div>
    </div>
</body>

</html>