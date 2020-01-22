$(function(){

  //よみこんでなかった 要再実行

  $('.answer').on('change', function(){
	  console.log("answer selected");
	  $(this).parent().css('font-weight','bold');
	  $(this).parent().css('color','#05ff05');
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