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
<title>查看</title>
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
									<h6>查看框</h6>
									<hr />

									<div class="form-group">
										<label class="col-lg-2 control-label">菜品名称</label>
										<s:property value="vm.vname"></s:property>
									</div>
									<div class="form-group">
										<label class="col-lg-2 control-label">价格</label>
										<s:property value="vm.vprice"></s:property>
									</div>
									<div class="form-group">
										<label class="col-lg-2 control-label">种类</label>
										<s:property value="vm.vkind"></s:property>
									</div>

									<div class="form-group">
										<label class="col-lg-2 control-label">照片</label> <img
											src="showphoto?id=${vm.vid }" />
									</div>

									<div class="form-group">
										<label class="col-lg-4 control-label">备注</label>
										<s:property value="vm.remark"></s:property>
									</div>

									<div class="form-group">
										<a href="tomain.action">返回</a>
									</div>

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