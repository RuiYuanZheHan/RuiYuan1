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
<title>菜品分页查询界面</title>
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
				<!-- Breadcrumb -->
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
									<s:form class="navbar-form navbar-left" role="search"
										action="search.action" namespace="/vegetable" method="post"
										theme="simple" enctype="multipart/form-data">
										<div class="form-group">
											<label class="col-lg-4 control-label">最低价</label>
											<s:textfield name="lowprice" class="form-control"></s:textfield>
											<label class="col-lg-4 control-label">最高价</label>
											<s:textfield name="highprice" class="form-control"></s:textfield>

											<label class="col-lg-4 control-label">每页显示多少行</label>
											<s:textfield name="row" class="form-control"></s:textfield>

											<label class="col-lg-4 control-label">当前显示第几页</label>
											<s:textfield name="page" class="form-control"></s:textfield>
											<hr />
											<div class="form-group">
												<s:submit class="btn btn-danger" value="提交" />
											</div>
										</div>
									</s:form>


									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><span class="uni"> <input type='checkbox'
														value='check1' />
												</span></th>
												<th>菜名</th>
												<th>照片</th>
												<th>价格</th>
												<th>种类</th>
												<th>操作</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach var="um" items="${vegelist}">
												<tr>
													<td><span class="uni"> <input type='checkbox'
															value='check1' />
													</span></td>
													<td>${ um.vname}</td>
													<td><img width="20" height="20"
														src="showphoto?id=${um.vid }" /></td>
													<td>${um.vprice }</td>
													<td>${um.vkind}</td>
													<td><a
														href="add.action?id=${um.vid }&consumer=${consumer}">增加</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="widget-foot">
										<div class="uni pull-left">
											<a href="tomain.action">返回</a>
										</div>
										<ul class="pagination pull-right">
											<li>总个数:${counts}</li>
											<li>总页数:${pages}</li>
											<li><a
												href="search.action?page=1&low=${lowprice}&high=${highprice}">首页</a></li>
											<li><a
												href="search.action?page=${page-1}&low=${lowprice}&high=${highprice}">前一页
											</a></li>
											<li><a
												href="search.action?page=${page+1}&low=${lowprice}&high=${highprice}">下一页</a></li>
											<li><a
												href="search.action?page=${pages}&low=${lowprice}&high=${highprice}">末页</a></li>
										</ul>
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