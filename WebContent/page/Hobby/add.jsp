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

</head>
<div class="content">
	<%@include file="../js/left.jsp"%>
	<div class="mainbar">
		<div class="page-head">
			<h2 class="pull-left">
				<span class="page-meta"></span>
			</h2>
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="icon-home"></i> </a>
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
								
									<s:form action="add.action" namespace="/Hobby" method="post" theme="simple"
										enctype="multipart/form-data">
										<s:text name="hobbyname"/>
										<s:textfield  class="form-control"
										name="hobbymodel.hobbyname"></s:textfield>
										<s:submit class="btn btn-danger" key="submit" />
									</s:form>
									
									
								<div>
									<s:fielderror>
										<s:param>hobbymodel.hobbyname</s:param>
									</s:fielderror>
								</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>