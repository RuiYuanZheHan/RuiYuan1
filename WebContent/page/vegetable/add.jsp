<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title><s:text name="addvegetable" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<%@ include file="../js/jstop.jsp"%>
<script Charset="UTF-8">
	var xmlHttp;
	function checkiinfor() {
		var reg = /^([A-Za-z]|[\u4E00-\u9FA5])+$/;
		var name = document.getElementById("id1").value;
		if (!reg.test(name)) {
			alert("只能输入汉字和英文");
		} else if (name.length == 0) {
			alert("输入名称");
		}
	}

	function checkiinfor2() {
		var reg = new RegExp("^[0-9]*$");
		var price = document.getElementById("id2").value;
		if (!reg.test(price)) {
			alert("输入数字");
		} else if (price.length == 0) {
			alert("请输入价格");
		}

	}
	function checkiinfor3() {
		
		var reg = /^([A-Za-z]|[\u4E00-\u9FA5])+$/;
		var remark = document.getElementById("id3").value;
		if (!reg.test(remark)) {
			alert("只能输入汉字和英文");
		} else if (remark.length == 0) {
			alert("输入名称");
		}
	}

	function checkiinfor4() {
		checkiinfor1();
		checkiinfor2();
		checkiinfor3();

	}
</script>

</head>
<body>
	<%@ include file="../js/title.jsp"%>
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

										<hr />
										<!-- Form starts.  -->
										<s:form action="add.action" namespace="/vegetable"
											method="post" theme="simple" enctype="multipart/form-data">
											<div class="form-group">
												<label class="col-lg-4 control-label"><s:text
														name="vegetablemodel.vname" /></label>
												<s:textfield class="form-control" onblur="checkiinfor()"
													name="vegetablemodel.vname" id="id1"></s:textfield>
											</div>

											<div class="form-group">
												<label class="col-lg-4 control-label"><s:text
														name="vegetablemodel.vprice" /></label>

												<s:textfield class="form-control" onblur="checkiinfor2()"
													name="vegetablemodel.vprice" id="id2"></s:textfield>

											</div>

											<div class="form-group">
												<label class="col-lg-4 control-label"><s:text
														name="vegetablemodel.vkind" /></label>


												<s:radio name="vegetablemodel.vkind" id="optionsRadios2"
													list="#{'热菜':'热菜','凉菜':'凉菜'}"></s:radio>


											</div>

											<div class="form-group">
												<label class="col-lg-4 control-label"><s:text
														name="vegetablemodel.photo" /></label>
												<s:file name="photo"  key="select" />
											</div>


											<div class="form-group">
												<label class="col-lg-4 control-label"><s:text
														name="vegetablemodel.remark" /></label>
												<s:textarea name="vegetablemodel.remark" id="id3"
													onblur="checkiinfor3()" />
											</div>
											<div class="form-group">
												<s:submit class="btn btn-danger"  key="submit"  noclick="checkiinfor4()"/>
											</div>
										</s:form>
									</div>
								</div>
								<div class="widget-foot"></div>
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