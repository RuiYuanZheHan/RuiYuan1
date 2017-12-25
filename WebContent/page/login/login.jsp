<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title><s:text name="HotelManagement" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../../style/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="../../style/font-awesome.css">
<link href="../../style/style.css" rel="stylesheet">
<link href="../../style/bootstrap-responsive.css" rel="stylesheet">
<link rel="shortcut icon" href="../../img/favicon/favicon.png">
</head>
<body>
	<!-- Form area -->
	<div class="admin-form">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<!-- Widget starts -->
					<div class="widget worange">
						<!-- Widget head -->
						<div class="widget-head">
							<i class="icon-lock"></i>
							<s:text name="HotelManagement" />
						</div>
						<div class="widget-content">
							<div class="padd">
								<!-- Login form -->
								<s:form class="form-horizontal" action="login.action"
									theme="simple">
									<!-- Email -->
									<div class="form-group">
										<label class="control-label col-lg-3" for="inputEmail"><s:text
												name="username" /></label>
										<div class="col-lg-9">
											<s:textfield class="form-control" name="name"></s:textfield>
										</div>
									</div>
									<!-- Password -->
									<div class="form-group">
										<label class="control-label col-lg-3" for="inputPassword"><s:text
												name="password" /></label>
										<div class="col-lg-9">
											<s:password class="form-control" name="password"></s:password>
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-lg-4" for="inputPassword"><s:text
												name="identifier" /></label>
										<div class="col-lg-9">
											<s:textfield class="form-control" name="identifier"></s:textfield>
											<img style="cursor: pointer; margin-top: 3px;"
									src="http://localhost:8080/StrutsHibernateSpring/validata/getCode.action"
						
												id="codeImage"> <a href="#" id="flushLoginValiCode1">
												<s:text name="image" />
											</a>
										</div>

									</div>

									<div>
										<s:submit key="login" class="btn btn-danger" />
									</div>
								</s:form>
								<div>
									<s:fielderror>
										<s:param>name</s:param>
										<s:param>password</s:param>
									</s:fielderror>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<script src="../../js/jquery.js"></script>
	<script src="../../js/bootstrap.js"></script>
	<script src="../../js/jquery-2.1.4.min.js"></script>
	<script src="../../js/login.js"></script>
</body>
</html>