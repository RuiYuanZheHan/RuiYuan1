//$(function() {
//})

$(document).ready(
		function() {

			$("#flushLoginValiCode1,#flushLoginValiCode2").click(
					function() {
						$("#codeImage").attr(
								"src",
								"http://localhost:8080/StrutsHibernateSpring/validata/getCode.action?"
										+ Math.random());
					});
		})