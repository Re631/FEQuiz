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

/*
	$("#final-answer").on('click', function() {
		if ($(".answer:checked").val() != null) {
			$(".alert").fadeOut(0);
			$(".result-content").slideDown(200);
		} else {
			$(".alert").slideDown(200);
		}
	});
*/

	$("#final-answer").on('click', function() {
		console.log($(".answer:checked").val());
		if ($(".answer:checked").val() != null) {
			$(".alert").fadeOut(0);
			$(".result-content").slideDown(200);

			if($(".answer:checked").val() === "true"){
				$(".result").text("〇");
			}
			else{
				$(".result").text("×");
			}
		} else {
			$(".alert").slideDown(200);
		}
	});


});