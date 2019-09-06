 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
 <html lang="ko" class="no-js">

 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<style>
	 	body {
 			background-color: black;
 		}

 		.no-js {
 			display: none;
 		}
	</style>
	
	<!-- turn.js 관련  -->
 	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
 	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
 	<!-- turn.js 커스텀  -->
	<script src="resources/js/turnJs.js"></script>
	<link href="resources/css/page_button.css"  rel="stylesheet">


<script>
function main(){

		//$('.flipbook').turn("disable", true);

	
		$('#btnGo').on('click', function () {

			$(".flipbook").turn("disable", false);
			$(".flipbook").turn("page", 2);
			$('.flipbook').turn("disable", true);
		});


		$("#btn_login").on('click', function () {
			alert("ddd");
			$(".flipbook").turn("disable", false);
			$(".flipbook").turn("page", 14);
			$('.flipbook').turn("disable", true);
		})

	
}


</script>
 </head>

 <body class="no-js">

 	<div class="flipbook-viewport">
 		<div class="container">

 			<div class="flipbook">
 				<!--1 page-->
 				<div -ms-overflow-style: none; id="title_page">
 					<div class="page_content_odd title_content_odd">
 						<jsp:include page="page/page_title.jsp" flush="false" />
 						<jsp:include page="page/button_odd.jsp" flush="false" />
 					</div>
 					<!--2 page-->
 					<div id="page_2">
 						<jsp:include page="page/button_even.jsp" flush="false" />
 						<jsp:include page="page/page_2.jsp" flush="false" />
 					</div>
 					<!--3 page-->
 					<div id="page_3">
 						<jsp:include page="page/page_3.jsp" flush="false" />
 						<jsp:include page="page/button_odd.jsp" flush="false" />
 					</div>
 					<!--4 page-->
 					<div id="page_4">
 						<jsp:include page="page/button_even.jsp" flush="false" />
 						<jsp:include page="page/page_4.jsp" flush="false" />
 					</div>
 					<!--5 page-->
 					<div id="page_5">
 						<jsp:include page="page/page_5.jsp" flush="false" />
 						<jsp:include page="page/button_odd.jsp" flush="false" />
 					</div>
 					<!--6 page-->
 					<div id="page_6">
 						<jsp:include page="page/button_even.jsp" flush="false" />
 						<jsp:include page="page/page_6.jsp" flush="false" />
 					</div>
 					<!--7 page-->
 					<div id="page_7">
 						<jsp:include page="page/page_7.jsp" flush="false" />
 						<jsp:include page="page/button_odd.jsp" flush="false" />

 					</div>
 					<!-- page_set end -->
 					<!--8 page-->
 					<div id="page_8">
 						<jsp:include page="page/button_even.jsp" flush="false" />
 						<jsp:include page="page/page_8.jsp" flush="false" />

 					</div>
 					<!--9 page-->
 					<div id="page_9">
 						<jsp:include page="page/page_9.jsp" flush="false" />
 						<jsp:include page="page/button_odd.jsp" flush="false" />

 					</div>
 					<!-- page_set end -->
 					<!--last  page-->
 					<div id="last_page">
 						<jsp:include page="page/page_last.jsp" flush="false" />

 					</div>
 				</div>

 			</div>
 		</div>



 </body>

 </html>