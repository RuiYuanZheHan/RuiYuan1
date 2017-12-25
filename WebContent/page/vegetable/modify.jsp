<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>修改用户界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="">
<%@ include file="../js/jstop.jsp"%>
<script Charset="UTF-8">
	var xmlHttp;
	function checkiinfor1() {
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
		var reg = /^[\u4e00-\u9fa5]+$/;
		var remark = document.getElementById("id3").value;
		if (!reg.test(remark)) {
			alert("输入汉字");
		}
		if (remark.length == 0) {
			alert("输入备注");
		}

	}

	function checkiinfor4() {
		checkiinfor1();
		checkiinfor2()
		checkiinfor3()

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
			<h2 class="pull-left">
				Forms
				<!-- page meta -->
				<span class="page-meta">Something Goes Here</span>
			</h2>
			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.jsp"><i class="icon-home"></i> Home</a>
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
									<h6>Input Boxs</h6>
									<hr />
									<!-- Form starts.  -->
									<s:form action="modify.action" namespace="/vegetable"
										theme="simple" method="post" enctype="multipart/form-data">

										<div class="form-group">
											<label class="col-lg-4 control-label">菜品名称</label>
											<s:textfield name="modifyvegetable.vname"  id="id1"  onblur="checkiinfor1()"
												class="form-control"></s:textfield>
										</div>


										<div class="form-group">
											<label class="col-lg-4 control-label">价格</label>
											<s:textfield class="form-control"   id="id2"  onblur="checkiinfor2()"
												name="modifyvegetable.vprice"></s:textfield>
										</div>



										<div class="form-group">
											<label class="col-lg-4 control-label">种类</label>
											<s:radio name="modifyvegetable.vkind" id="optionsRadios2"
												list="#{'热菜':'热菜','凉菜':'凉菜'}"></s:radio>
										</div>


										<img width="100" height="100"
											src="showphoto?id=${modifyvegetable.vid }" />
										<div class="form-group">

											<label class="col-lg-4 control-label">照片</label>
											<s:file name="photo"></s:file>
										</div>



										<div class="form-group">
											<label class="col-lg-4 control-label">备注</label>
											<s:textarea name="modifyvegetable.remark"    id="id3"  onblur="checkiinfor3()"/>
										</div>


										<hr />
										<s:submit class="btn btn-danger" value="提交"   onclick="checkiinfor4()"/>
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