<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<%@ include file="../js/jstop.jsp"%>
</head>
<body>
	<%@ include file="../js/title.jsp"%>
</head>
<div class="content">
	<%@include file="../js/left.jsp"%>

	<div class="mainbar">
		<!-- Page heading -->
		<div class="page-head">
			<!-- Page heading -->
			<h2 class="pull-left">
				<!-- page meta -->
				<span class="page-meta"></span>
			</h2>
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="icon-home"></i> </a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current"></a>
			</div>
			<div class="clearfix"></div>
		</div>
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
									<s:form action="modify.action" namespace="/User" method="post"
										theme="simple" enctype="multipart/form-data">
										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="usermodel.uname" /></label>
											<s:textfield label="姓名" class="form-control"
												name="modifymodel.uname"></s:textfield>
										</div>
										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="usermodel.upassword" /></label>
											<s:password label="姓名" class="form-control"
												name="modifymodel.upassword"></s:password>
										</div>
										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="usermodel.usex" /></label>
											<s:radio name="modifymodel.usex" id="optionsRadios2"
												list="#{'男':'男','女':'女'}"></s:radio>
										</div>
										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="usermodel.department" /></label>
											<s:select name="modifymodel.department"
												list="#{'one':'銷售部','two':'管理部'}"></s:select>
										</div>
										<div class="form-group">
											<s:submit class="btn btn-danger"   key="submit"/>
										</div>
									</s:form>
								</div>
							</div>
							<div class="widget-foot">
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