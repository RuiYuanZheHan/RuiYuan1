<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title><s:text name="view"/></title>
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
									<hr />
									<form role="search">
										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text name="hobbbyname"/></label>
											<s:property value="hobbymodel.hobbyname "></s:property>
										</div>
										<div class="form-group">
											<label class="col-lg-4 control-label"><s:text name="vipname"/></label>
											<s:iterator value="hobbymodel.vipmodel">
												<s:property value="vip_name"></s:property>
												<s:property value="vphone"></s:property>
											</s:iterator>

										</div>

										<div class="form-group">
											<a href="tomain.action"><s:text name="return"/></a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>
<!-- JS -->
<%@ include file="../js/jsfoot.jsp"%>
</body>
</html>