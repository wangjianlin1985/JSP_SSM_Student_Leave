<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>学生信息管理系统</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@include file="common.jsp"%>


</head>

<style type="text/css">
</style>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12" >
					<button type="button" class="btn btn-md btn-default  pull-right"  onclick="loginPage()" style="margin:10px 0px 10px 0;">登录</button>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>   
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/banner1.jpg" alt="First slide">
					</div>
					<div class="item">
						<img src="images/banner4.jpg" alt="Second slide">
					</div>
					<div class="item">
						<img src="images/banner3.jpg" alt="Third slide">
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div> 
			
			<!-- 第一个model 开始 -->
<div id="setModal" class="modal fade" tabindex="-1" role="dialog" data-backdrop="static" data-keybord="false">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				编辑
			</div>
			<!-- modal-body 开始 -->
			<div class="modal-body">
			123
			</div>
			<!-- modal-body 结束 -->
			<div class="modal-footer">
			
			</div>
			
		</div>
	</div>



</div>
<!-- 第一个model 结束 -->

			
			
			
		</div>
	</div>


	<div class="row">
			<div class="col-md-12" >
				<table class="table table-striped">
				  <caption><center><h2>通知</h2></center></caption>
				  <thead>
				    <tr>
				      <th style="width:20%;">序号</th>
				      <th >标题</th>
				    </tr>
				  </thead>
				  <tbody>
				  
				  <c:forEach items ="${list}" var = "li" step="1" varStatus="status">
				  	<tr>
				      <td>${status.count}</td>
				      <td><a href="javascript:void(0)" onclick="lookInfo('${li.content}')">${li.title}</a></td>
				      
				    </tr>
				</c:forEach>
				  
			
				  
				  
				 
				  </tbody>
				</table>		
			</div>
		</div>
	</div>



<div id="setModel" class="modal fade" tabindex="-1" role="dialog" data-backdrop="true" data-keybord="true">
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header" style="background:#2e6da4;">
				<center>
							<h1>
								<strong style="color:white;" >学生管理系统</strong>
							</h1>
						</center>
			</div>
			<!-- modal-body 开始 -->
			<div class="modal-body">
				
						<div class="form-bottom contact-form">
							<form id="loginForm" class="form-horizontal">
								<div class="form-group">
									<label for="username" class="col-lg-3 control-label"></label>
									<div class="col-lg-6">
										<input type="text" class="form-control" id="username" name="username"  placeholder="用户名">
									</div>
									<div id="username_tip" class="col-lg-3 " ></div>
								</div>
								<div class="form-group">
									<label for="password" class="col-lg-3 control-label"></label>
									<div class="col-lg-6">
										<input type="password" class="form-control" id="password" name="password" placeholder="密码">
									</div>
									<div id="password_tip" class="col-lg-3 " ></div>
								</div>
							 	<div class="form-group">
									<label for="role" class="col-lg-3 control-label" ></label>
									<div class="col-lg-6">
										<select id="role" name="role" class="form-control">
										  <option value="0">--请选择--</option>
										  <option value="1">学生</option>
										  <option value="2">老师</option>
										  <option value="3">管理员</option>
										</select>
									</div>
									<div  id="role_tip" class="col-lg-3" ></div>
								</div> 
							
							</form>
						</div>

			</div>
			 <div class="modal-footer">
                <center>
					<button type="button" class="btn btn-lg btn-primary"
						data-toggle="button" onclick="login()">登录</button>
					<button type="button" class="btn btn-lg btn-default"
						data-toggle="button" onclick="formReset()">重置</button>
				</center>
            </div>
			
		</div>
	</div>



</div>




<script type="text/javascript">

$(function(){
	$("#username").focus(function(){
		$("#username_tip").empty();
		$("#password_tip").empty();
		$("#role_tip").empty();
	});
	$("#password").focus(function(){
		$("#username_tip").empty();
		$("#password_tip").empty();
		$("#role_tip").empty();
	});
	$("#role").change(function(){
		$("#username_tip").empty();
		$("#password_tip").empty();
		$("#role_tip").empty();
	});
})

function loginPage(){
	$('#setModel').modal('show');
}

function formReset(){
	$('#loginForm')[0].reset();
}


function login(){
	var temp = getFormJson("loginForm");
	if(temp.username == ""){
		$("#username_tip").html("<font color='red'>* 请输入用户名！</font>");
		return;
	}
	if(temp.password == ""){
		$("#password_tip").html("<font color='red'>* 请输入密码！</font>");
		return;
	}
	if(temp.role == 0){
		$("#role_tip").html("<font color='red'>* 请选择角色！</font>");
		return;
	}
	
	$.post("login/login.htm", temp ,function(data) {
		var val = eval('(' +data+ ')')
		if(val.isFlag == 0){
			if(IEVersion()==-1){
			window.location.href="login/main.htm";
			}else{
			window.location.href="main.htm";
			}
			
		}else if(val.isFlag == 1){
			$("#password_tip").html("<font color='red'>* 密码输入不正确！</font>");
		}else if(val.isFlag == 2){
			$("#username_tip").html("<font color='red'>* 用户名输入不正确！</font>");
		}
		
	});
}


function lookInfo(info){
	
	bootbox.alert({ 
		title:"通知",
		  size: "large",
		  message: info, 
		})
	
}


function IEVersion() {
            var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串  
            var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1; //判断是否IE<11浏览器  
            var isEdge = userAgent.indexOf("Edge") > -1 && !isIE; //判断是否IE的Edge浏览器  
            var isIE11 = userAgent.indexOf('Trident') > -1 && userAgent.indexOf("rv:11.0") > -1;
            if(isIE) {
                var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
                reIE.test(userAgent);
                var fIEVersion = parseFloat(RegExp["$1"]);
                if(fIEVersion == 7) {
                    return 7;
                } else if(fIEVersion == 8) {
                    return 8;
                } else if(fIEVersion == 9) {
                    return 9;
                } else if(fIEVersion == 10) {
                    return 10;
                } else {
                    return 6;//IE版本<=7
                }   
            } else if(isEdge) {
                return 'edge';//edge
            } else if(isIE11) {
                return 11; //IE11  
            }else{
                return -1;//不是ie浏览器
            }
        }
</script>

</body>
</html>