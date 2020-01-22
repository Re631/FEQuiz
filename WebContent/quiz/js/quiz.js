$(function(){

  //よみこんでなかった 要再実行

  $('.answer').on('change', function(){
	  console.log("answer selected");

	  $(".answer-content").css({
		  "font-weight":"initial",
		  "color":"initial"
	  });
	  console.log("answer selected2");


	  $(this).parent().css({
		  "font-weight":"bold",
		  "color":"#05ff05"
	  });
	  console.log("answer selected3");
  });



	$("#final-answer").on('click', function(){
		console.log($(".answer").prop("checked"));
		console.log($(".answer:checked").val());
		if($(".answer:checked").val() != null){
			$(".alert").fadeOut(0);
			$(".result-content").slideDown(200);
		}else{
			$(".alert").slideDown(200);
		}
	});
});