

		$(function () {
			$("#datepicker").datepicker();
		});


		$(function () {
			$.datepicker.setDefaults({
				dateFormat: 'yy-mm-dd',
				prevText: '이전 달',
				nextText: '다음 달',
				monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				dayNames: ['일', '월', '화', '수', '목', '금', '토'],
				dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
				dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
				showMonthAfterYear: true,
				yearSuffix: '년'
			});

			$(function () {
				$('.datepicker').datepicker();
			});
		});
		function showList() {
			var windowWidth = $(window).width();

			if (windowWidth >= 1200) {
				$('.video-list').removeClass('mobile-list hide');
			} else if (windowWidth < 1200) {
				$('.video-list').addClass('mobile-list hide');
			}
		}



		function initPlayer() {

			var autoplay = 0;

			$('.autoplay-toggle').on('click', function () {
				$(this).toggleClass('autoplay-toggle-on');
				if ($('.autoplay-toggle').hasClass('autoplay-toggle-on')) {
					$('.autoplay-select h2').css({
						'color': '#fff'
					});
					autoplay = 1;
				} else {
					$('.autoplay-select h2').css({
						'color': '#cccccc'
					});
					autoplay = 0;
				}
			});



			var video = $('.video-list li').first().attr('data-url');

			$('.video-frame').attr('src', video + '?autoplay=' + autoplay + '&rel=0&amp;showinfo=0');

			$('.video-list li').on('click', function () {
				var $this = $(this);
				var video = $this.attr('data-url');
				$('.video-frame').attr('src', video + '?autoplay=' + autoplay + '&rel=0&amp;showinfo=0');
				$('.video-list li').removeClass('active-video');
				$this.addClass('active-video');
			});

			showList();

		}

		initPlayer();

		$('.video-list-trigger').on('click', function () {
			$('.video-list').toggleClass('hide');
		});

		$('.mobile-list').on('click', function () {
			$('.video-list').addClass('hide');
		});