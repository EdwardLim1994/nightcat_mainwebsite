$(document).ready(function () {
	$num = $('.my-card').length;
	$even = $num / 2;
	$odd = ($num + 1) / 2;

	if ($num % 2 == 0) {
		$('.my-card:nth-child(' + $even + ')').addClass('card-active');
		$('.my-card:nth-child(' + $even + ')')
			.prev()
			.addClass('card-prev');
		$('.my-card:nth-child(' + $even + ')')
			.next()
			.addClass('card-next');
	} else {
		$('.my-card:nth-child(' + $odd + ')').addClass('card-active');
		$('.my-card:nth-child(' + $odd + ')')
			.prev()
			.addClass('card-prev');
		$('.my-card:nth-child(' + $odd + ')')
			.next()
			.addClass('card-next');
	}

	$('.my-card').click(function () {
		$slide = $('.card-active').width();

		if ($(this).hasClass('card-next')) {
			$('.card-carousel')
				.stop(false, true)
				.animate({ left: '-=' + $slide });
		} else if ($(this).hasClass('card-prev')) {
			$('.card-carousel')
				.stop(false, true)
				.animate({ left: '+=' + $slide });
		}

		$(this).removeClass('card-prev card-next');
		$(this).siblings().removeClass('card-prev card-active card-next');

		$(this).addClass('card-active');
		$(this).prev().addClass('card-prev');
		$(this).next().addClass('card-next');
	});

	// Keyboard nav
	$('html body').keydown(function (e) {
		if (e.keyCode == 37) {
			// left
			$('.card-active').prev().trigger('click');
		} else if (e.keyCode == 39) {
			// right
			$('.card-active').next().trigger('click');
		}
	});
});
