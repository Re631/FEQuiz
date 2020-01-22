$(function() {

	$('.answer').on('change', function() {
		$(".answer-content").css({
			"font-weight" : "initial",
			"color" : "initial"
		});

		$(this).parent().css({
			"font-weight" : "bold",
			"color" : "#05ff05"
		});
	});

	$("#final-answer").on('click', function() {
		if ($(".answer:checked").val() != null) {
			$(".alert").fadeOut(0);
			$(".result-content").slideDown(200);
		} else {
			$(".alert").slideDown(200);
		}
	});
});