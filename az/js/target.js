$(function(){
  
  //menu2~4 숨기고 hidden클래스 추가(숨겨라)
  $("#menu2, #menu3, #menu4").hide().addClass("hidden"); 
  //menu1에는 visible클래스추가후 보여라
  $("#menu1").addClass("visible");
	
	$("nav ul").click(function(event){
		target = $(event.target); //이벤트대상을 변수에 저장
		if(target.is("a")){//링크설정된 a
		event.preventDefault(); //기본이벤트 막기
		
		//속성의 href의 hidden클래스를 찾기
		if ( $(target.attr("href")).hasClass("hidden") ){  
			//visible삭제후 hidden클래스 추가후 숨겨라
			$(".visible").removeClass("visible").addClass("hidden").hide();
			//속성 href의 hidden클래스삭제후 visible클래스 추가후 보여라
        $(target.attr("href")).removeClass("hidden").addClass("visible").show();
      };
		};
	});
});