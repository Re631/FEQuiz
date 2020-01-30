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
	let flag = true;

	$("#final-answer").on('click', function() {
		console.log($(".answer:checked").val());
		$("#hoge").prop('disabled', false);
		if (typeof $(".answer:checked").val() != "undefined" && flag == true) {
			$(".alert").fadeOut(0);
			$(".result-content").slideDown(200);

			if($(".answer:checked").val() === "true"){
				$(".result").text("結果:正解 〇");
				$(".result").css("color","#f66");

			}
			else{
				$(".result").text("結果:不正解 ×");
				$(".result").css("color","#66f");
			}
			flag = false;
		} else if(typeof $(".answer:checked").val() === "undefined"){
			$(".alert").slideDown(200);
		}
	});
	
	$("#bool").prop("")


});