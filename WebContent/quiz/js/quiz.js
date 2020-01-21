$(function(){

  //よみこんでなかった 要再実行
/*
  $('.answer').on('change', function(){
	  console.log("answer selected");
	  $(this).parent('.answer-label').css('font-size','100px');
  });
*/

	$("#final-answer").on('click', function(){
		console.log("final-answer");
		$(".result-content").slideDown(200);
	});
});