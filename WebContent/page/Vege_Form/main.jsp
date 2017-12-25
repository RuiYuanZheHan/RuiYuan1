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
<title>订单界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<!-- Stylesheets -->
<%@ include file="../js/jstop.jsp"%>
</head>
<body>
	<!-- Main content starts -->
	<%@ include file="../js/title.jsp"%>
	<div class="content">
		<!-- Sidebar -->
		<%@include file="../js/left.jsp"%>
		<!-- Sidebar ends -->
		<!-- Main bar -->
		<div class="mainbar">
			<!-- Page heading -->
			<div class="page-head">
				<h2 class="pull-left">
					<i class="icon-file-alt"></i> Media
				</h2>
				<div class="bread-crumb pull-right">
					<a href="index.html"><i class="icon-home"></i> Home</a>
					<!-- Divider -->
					<span class="divider">/</span> <a href="#" class="bread-current">Dashboard</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- Page heading ends -->
			<!-- Matter -->
			<div class="matter">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="widget">
								<div class="widget-head">
									<div class="pull-left">照片</div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
										<a href="#" class="wclose"><i class="icon-remove"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="widget-content medias">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><span class="uni"> <input type='checkbox'
														value='check1' />
												</span></th>
												<th>菜名</th>
												<th>价格</th>
												<th>种类</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>

											<s:iterator var="vm" value="vegelist">
												<tr>
													<td><span class="uni"> <input type='checkbox'
															value='check1' />
													</span></td>
													<td><s:property value=" #vm.vname"></s:property></td>
													<td><s:property value="#vm.vprice"></s:property></td>
													<td><s:property value="#vm.vkind"></s:property></td>
													<td><a
														href="add.action?id=${vid }&consumer=${consumer}">增加</a></td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
									<div class="widget-foot">
										<div class="uni pull-left">
											<table>
												<tr>
													<td><a
														href="toview.action?consumer=${consumer }&sum=0">确定</a></td>
												</tr>
											</table>
										</div>
										<div class="clearfix"></div>
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
						Copyright &copy; 2017| <a href="#">Your Site</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>
	<%@ include file="../js/jsfoot.jsp"%>
</body>
</html>