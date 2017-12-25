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
<title>用户界面aaaa</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<!-- Stylesheets -->
<%@ include file="../js/jstop.jsp"%>
</head>
<body>
	<%@ include file="../js/title.jsp"%>
	<div class="content">
		<%@include file="../js/left.jsp"%>
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
									<div class="pull-left">菜品列表</div>
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
												<th>编号</th>
												<th>姓名</th>
												<th>性别</th>
												<th>所屬部門</th>
												<th>操作</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<s:iterator var="umm" value="usermodellist">
												<tr>
													<td><span class="uni"> <input type='checkbox'
															value='check1' />
													</span></td>
													<td><s:property value=" #umm.uid"></s:property></td>
													<td><s:property value="#umm.uname"></s:property></td>
													<td><s:property value="#umm.usex"></s:property></td>
													<td><s:property value="#umm.department"></s:property></td>
													<td><a href="tomodify.action?id=${uid}">修改密码</a></td>
													<td><a href="delete.action?id=${uid}">删除</a></td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
									<div class="widget-foot">
										<a href="toadd.action">增加</a>

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
						Copyright &copy; 2012 | <a href="#">Your Site</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>
	<%@ include file="../js/jsfoot.jsp"%>
</body>
</html>