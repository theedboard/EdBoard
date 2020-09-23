    AOS.init({duration: 1000,
			disable: window.orientation==90 || window.orientation==-90,
		});
		AOS.refresh();
	$(window).on('beforeunload', function() {
		history.scrollRestoration = 'manual';
		$(window).scrollTop(0);
	});

	var vmin = Math.min($(window).width(),$(window).height());
	var vh = $(window).height();

	$(window).on('orientationchange', function() {
		$(window).one('resize', function() {
			vmin = Math.min($(window).width(),$(window).height());
			vh = $(window).height();
		});
	});

  $(window).scroll(function() {
  	var scroll = $(window).scrollTop();
		if (scroll < vh && scroll!=0) {
			$(".title").css({
				opacity: 1-3*(scroll/vh),
			});
			$(".logo").css({
				transform: 'scale('+(1 + scroll/(2*vh))+')',
				opacity: 0.25 + (1-scroll/vh),
			});
			if($(window).width() > 991) {
				$(".logo").css({
					top: 0.5*vh - 0.3*vmin + (scroll/vh)*0.1*vmin,
				});
			}
		}
		if (scroll > vh) {
			$(".logo").css({
				opacity: 0.25-(scroll-vh)/vh,
			});
		}
	});
