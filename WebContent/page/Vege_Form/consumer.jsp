<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>增加菜单界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<%@ include file="../js/jstop.jsp"%>
<script Charset="UTF-8">
	var xmlHttp;
	function checkiinfor() {
		var reg = /^([A-Za-z]|[\u4E00-\u9FA5])+$/;
		var name = document.getElementById("id1").value;
		 if (name.length == 0) {
				alert("输入客戶名");
			}else if (!reg.test(name)) {
			alert("只能输入汉字和英文");
		} 
	}
</script>
</head>
<body>
	<!-- Header ends -->
	<!-- Main content starts -->
	<%@ include file="../js/title.jsp"%>
</head>
<div class="content">
	<%@include file="../js/left.jsp"%>

	<div class="mainbar">
		<!-- Page heading -->
		<div class="page-head">
			<!-- Page heading -->
			<h2 class="pull-left">
				<span class="page-meta">欢迎光临</span>
			</h2>
			<!-- Breadcrumb -->

			<div class="clearfix"></div>
		</div>
		<!-- Page heading ends -->
		<!-- Matter -->
		<div class="matter">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="widget wgreen">
							<div class="widget-head">
								<div class="pull-left">点菜单</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">
									<s:form action="tomain.action" namespace="/Vege_Form"
										method="post" enctype="multipart/form-data" theme="simple">
										<div class="form-group">
											<label class="col-lg-4 control-label">请输入姓名</label>
											<s:textfield  class="form-control" name="consumer"   id="id1"  onblur="checkiinfor()" ></s:textfield>
										</div>
										<div class="form-group">
											<s:submit class="btn btn-danger" value="提交"    onclick="checkiinfor()"/>
										</div>
									</s:form>
								</div>
							</div>
							<div class="widget-foot">
								<!-- Footer goes here -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</div>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Copyright info -->
				<p class="copy">
					Copyright &copy; 2017 | <a href="#">Your Site</a>
				</p>
			</div>
		</div>
	</div>
</footer>
<!-- Footer ends -->
<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>
<!-- JS -->
<%@ include file="../js/jsfoot.jsp"%>
</body>
</html>