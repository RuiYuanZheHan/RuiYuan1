<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>查看会员</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<%@ include file="../js/jstop.jsp"%>
</head>
<body>
	<!-- Header ends -->
	<!-- Main content starts -->
	<%@ include file="../js/title.jsp"%>
</head>
<div class="content">

	<!-- Sidebar -->
	<%@include file="../js/left.jsp"%>

	<div class="mainbar">
		<!-- Page heading -->
		<div class="page-head">
			<!-- Page heading -->
			<h2 class="pull-left">
				Forms
				<!-- page meta -->
				<span class="page-meta">Something Goes Here</span>
			</h2>
			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="icon-home"></i> Home</a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current">Forms</a>
			</div>
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
								<div class="pull-left">Forms</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">
									<h6>Input Boxs</h6>
									<hr />

									<div class="form-group">
										<label class="col-lg-4 control-label">名称</label>
										<s:property value="vipmodel.vip_name"></s:property>
									</div>

									<div class="form-group">
										<label class="col-lg-4 control-label">电话</label>
										<s:property value="vipmodel.vphone"></s:property>
									</div>

									<div class="form-group">
										<label class="col-lg-4 control-label">优惠</label>
										<s:property value="vipmodel.privilege"></s:property>
									</div>
									<div class="form-group">
										<label class="col-lg-4 control-label">电子邮件</label>
										<s:property value="vipmodel.vip_email"></s:property>
									</div>
									<div class="form-group">
										<label class="col-lg-4 control-label">爱好</label>
										<s:iterator value="vipmodel.hobbies">
											<s:property value="hobbyname"></s:property>
										</s:iterator>
									</div>
									<hr />
									<div class="form-group">
										<label class="col-lg-4 control-label">消费记录</label> <br />
										<s:iterator value="vegelist">
											<s:property value="consumer"></s:property>
											<s:property value="vege_time"></s:property>
											<s:property value="vege_statistics"></s:property>
											<s:property value="vegetable.vname"></s:property>
											<s:property value="vegetable.vprice"></s:property>
											<br />
										</s:iterator>
									</div>
								</div>
								<div class="form-group">
									<a href="tomain.action">返回</a>
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