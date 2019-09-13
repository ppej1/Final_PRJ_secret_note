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
	<!-- bootStrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<!-- even ICON -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet"/>
	<!-- calendar -->	
	<link href='resources/js/fullcalendar/core/main.css' rel='stylesheet' />
	<link href='resources/js/fullcalendar/daygrid/main.css' rel='stylesheet' />		


	<!-- main index page -->
    <link rel="stylesheet" href="resources/template/css/animate.css">
    <link rel="stylesheet" href="resources/template/css/owl.carousel.min.css">

    <link rel="stylesheet" href="resources/template/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/template/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="resources/template/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/template/fonts/flaticons/font/flaticon.css">
    <!-- Theme Style -->
    <link rel="stylesheet" href="resources/template/css/style.css">
	<link rel="stylesheet" href="resources/template/css/templatemo-style.css">		


    <!-- custum templet Style -->
	<link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/pages_button.css">
	<link rel="stylesheet" href="resources/css/backgroundImg.css">
 </head>

 <body class="no-js">

 	<div class="flipbook-viewport">
 		<div class="flipbook-container">

 			<div class="flipbook">
 				<!--1 page - title page-->
 				<div -ms-overflow-style: none; id="title_page">
 					<div class="page_content_odd_title title_content_odd">
 						<jsp:include page="page/page_title.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--2 page mainpage 1-->
 					<div id="page_02">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_02.jsp" flush="false"/>
 					</div>
 					<!--3 page main page 2-->
 					<div id="page_03">
 						<jsp:include page="page/page_03.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--4 page 체크리스트 왼쪽 -->
 					<div id="page_04">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_04.jsp" flush="false"/>
 					</div>
 					<!--5 page 체크리스트 오른쪽 -->
 					<div id="page_05">
 						<jsp:include page="page/page_05.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--6 page 체크리스트 -->
 					<div id="page_06">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_06.jsp" flush="false"/>
 					</div>
 					<!--7 page 코멘트-->
 					<div id="page_07">
 						<jsp:include page="page/page_07.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
					<!--8 page 재고 달력 1-->
 					<div id="page_08">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_08.jsp" flush="false"/>
 					</div>
 					<!--9 page 재고달력 2 -->
 					<div id="page_09">
 						<jsp:include page="page/page_09.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--10 page 재고 페이지1-->
 					<div id="page_10">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_10.jsp" flush="false"/>
 					</div>
 					<!--11 page 재고 페이지 2-->
 					<div id="page_11">
 						<jsp:include page="page/page_11.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--12 page 사용 달력 1-->
 					<div id="page_12">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_12.jsp" flush="false"/>
 					</div>
 					<!--13 page 사용 달력 2-->
 					<div id="page_13">
 						<jsp:include page="page/page_13.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--14 page 사용 페이지 1-->
 					<div id="page_14">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_14.jsp" flush="false"/>
 					</div>
 					<!--15 page 사용 페이지 2-->
 					<div id="page_15">
 						<jsp:include page="page/page_15.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--18 page 폐기 페이지 1-->
 					<div id="page_16">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_16.jsp" flush="false"/>
 					</div>
 					<!--19 page 폐기 페이지 2-->
 					<div id="page_17">
 						<jsp:include page="page/page_17.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--20 page 분석 페이지 1-->
 					<div id="page_18">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_18.jsp" flush="false"/>
 					</div>
 					<!--21 page 분석 페이지 2-->
 					<div id="page_19">
 						<jsp:include page="page/page_19.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--last  page-->
 					<div id="last_page">
 						<jsp:include page="page/page_last.jsp" flush="false"/>

 					</div>
 				</div>

 			</div>
 		</div>
	</div>
	
	
	<script>
	function main(){
		//$('.flipbook').turn("disable", true);

	}
	
	

	</script>

			 <script src="resources/template/js/jquery-3.2.1.min.js"></script>

   	<!-- main -->
    <script src="resources/template/js/popper.min.js"></script>
    <script src="resources/template/js/bootstrap.min.js"></script>
    <script src="resources/template/js/owl.carousel.min.js"></script>
    <script src="resources/template/js/jquery.waypoints.min.js"></script>
    <script src="resources/template/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/template/js/magnific-popup-options.js"></script>
    <script src="resources/template/js/main.js"></script>
	<!-- turn.js 관련  -->
	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script type="text/javascript" src="resources/js/turnJs.js"></script>	
	
	<!-- calendar -->
	<script src='resources/js/fullcalendar/core/main.js'></script>
	<script src='resources/js/fullcalendar/daygrid/main.js'></script>

	


		




 </body>

 </html>