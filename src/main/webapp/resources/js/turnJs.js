		function load() {

 			var mql = window.matchMedia("screen and (min-width: 768px)");
 			if (mql.matches) {
 				console.log("1200px");
 				loadApp1();
 				$(window).resize(function () {
 					console.log(window.innerWidth);
 					$('.flipbook').turn('size', window.innerWidth - 100, window.innerHeight - 100);
 				});

 			} else {
 				console.log("768px");
 				loadApp2();
 				$(window).resize(function () {
 					console.log(window.innerWidth);
 					$('.flipbook').turn('size', window.innerWidth, window.innerHeight);
 				});
 			}
 			mql.addListener(function (e) {
 				if (e.matches) {
 					console.log("1200px");
 					$(window).resize(function () {
 						console.log(window.innerWidth);
 						$('.flipbook').turn('size', window.innerWidth - 100, window.innerHeight - 100);
 					});
 				} else {
 					console.log("768px");
 					$(window).resize(function () {
 						console.log(window.innerWidth);
 						$('.flipbook').turn('size', window.innerWidth, window.innerHeight);
 					});
 				}
 			});

 			$('body').removeClass('no-js');

 	
 			main();
 			
 		}

 		function loadApp1() {

 			// Create the flipbook

 			$('.flipbook').turn({
 				// Width

 				width: window.innerWidth - 100,

 				// Height

 				height: window.innerHeight - 100,

 				// Elevation

 				elevation: 50,

 				// Enable gradients

 				gradients: true,

 				// Auto center this flipbook

 				autoCenter: true,
 				
 				when: {
 					turning: function(event, page, view) {
 						
 						var book = $(this),
 						currentPage = book.turn('page'),
 						pages = book.turn('pages');
 						alert(book + "," + currentPage +"," + pages);
 						nav();
 					}
 				
 				}	
 				
 				
 			});
 		}

 		function loadApp2() {

 			// Create the flipbook



 			$('.flipbook').turn({
 				// Width

 				width: window.innerWidth,

 				// Height

 				height: window.innerHeight,

 				// Elevation

 				elevation: 50,

 				// Enable gradients

 				gradients: true,

 				// Auto center this flipbook

 				autoCenter: true
 			});





 		}
 		// Load the HTML4 version if there's not CSS transform
		yepnope({
 			test: Modernizr.csstransforms,
 			yep: ['resources/lib/turn.js'],
 			nope: ['resources/lib/turn.html4.min.js'],
 			both: ['resources/css/main.css'],
 			complete: load
 		});

		
		
		function nav(){
			$('.btn-go-menu').on('click', function () {
				alert("2");
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 2);
				$('.flipbook').turn("disable", true);
			});	
			$('.btn-go-check').on('click', function () {
				alert("4");
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 4);
				$('.flipbook').turn("disable", true);
			});	
	 	
			$('.btn-go-stock').on('click', function () {
				alert("8");
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 8);
				$('.flipbook').turn("disable", true);	
			});	
			$('.btn-go-use').on('click', function () {
				alert("12");
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 12);
				$('.flipbook').turn("disable", true);		
			});	
			$('.btn-go-Disposal').on('click', function () {
				alert("16");
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 16);
				$('.flipbook').turn("disable", true);	
			});	
			$('.btn-go-Analysis').on('click', function () {
				alert("20");
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 20);
				$('.flipbook').turn("disable", true);
			});	
		}
