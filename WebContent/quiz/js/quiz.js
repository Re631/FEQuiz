$(function(){

  //よみこんでなかった 要再実行
/*
  $('.answer').on('change', function(){
	  console.log("answer selected");
	  $(this).parent('.answer-label').css('font-size','100px');
  });
*/

	$("#final-answer").on('click', function(){
		console.log($(".answer").prop("checked"));
		console.log($(".answer:checked").val());
		if($(".answer").prop("checked")){
			$(".alert").fadeOut(0);
			$(".result-content").slideDown(200);
		}else{
			$(".alert").slideDown(200);
		}
	});
});