<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>增加用户界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<%@ include file="../js/jstop.jsp"%>
<%@ include file="../js/jsfoot.jsp"%>
<script>
	$(document).ready(function() {
		$("input[name='usermodel.uname']").on("blur", function() {
			var name = $("input[name='usermodel.uname']").val();
			$.getJSON("../../json/validataUser.action", {
				uname : name
			}, function(data) {
				if (data.result == "Y") {
					alert("用戶已经存在");
					$("input[name='usermodel.uname']").val("")
				}
			});
		});
	})
</script>
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
				<span class="page-meta"></span>
			</h2>
			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="icon-home"></i> </a>
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

									<hr />
									<!-- Form starts.  -->
									<s:form action="add.action" namespace="/User" method="post"
										theme="simple" enctype="multipart/form-data">
										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="usermodel.uname" /></label>
											<s:textfield class="form-control" name="usermodel.uname"
												id="userid"></s:textfield>
										</div>

										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="usermodel.upassword" /></label>
											<s:password class="form-control" name="usermodel.upassword"></s:password>
										</div>
										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="usermodel.usex" /></label>
											<s:radio name="usermodel.usex" id="optionsRadios2"
												list="#{'男':'男','女':'女'}"></s:radio>
										</div>

										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text
													name="usermodel.department" /></label>
											<s:select name="usermodel.department"    list="#{'one':'銷售部','two':'管理部'}"
												></s:select>
										</div>



										<div class="form-group">

											<s:submit key="submit" />
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
<!-- Footer ends -->
<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>
<!-- JS -->

</body>
</html>