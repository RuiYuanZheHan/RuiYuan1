<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title><s:text name="addvip" /></title>
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
	<%@include file="../js/left.jsp"%>
	<div class="mainbar">
		<!-- Page heading -->
		<div class="page-head">
			<!-- Page heading -->
			<h2 class="pull-left"></h2>
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="icon-home"></i></a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current"></a>
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
								<div class="pull-left"></div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">


									<s:form action="add.action" namespace="/VIP" method="post"  theme="simple"
										enctype="multipart/form-data">

										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="vipname" /></label>
											<s:textfield class="form-control" name="vipmodel.vip_name"></s:textfield>
										</div>



										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="vipphone" /></label>
											<s:textfield class="form-control" name="vipmodel.vphone"></s:textfield>
										</div>




										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="vipprivilege" /></label>
											<s:textfield class="form-control" name="vipmodel.privilege"></s:textfield>
										</div>

										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="vipemail" /></label>
											<s:textfield class="form-control" name="vipmodel.vip_email"></s:textfield>
										</div>


										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="hobbyname" /></label>
											<s:checkboxlist name="aa"  list="hobbylist" listKey="hobbyid"
												listValue="hobbyname"></s:checkboxlist>
										</div>

										<div class="form-group">
											<s:submit key="submit" />
										</div>
									</s:form>
								</div>
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