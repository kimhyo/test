<%
	Dim http_user_agent : http_user_agent = request.servervariables("http_user_agent")
	Dim terminal : terminal = "pc"
	
	Dim mobileString : mobileString = Array("mobile","iphone","ipod","ipad","android")

	For i = 0 To UBound(mobileString)
		If InStr(LCase(http_user_agent),mobileString(i)) > 0 Then
			terminal = "mb"
			Exit For
		End If 
	Next 
	
	if terminal = "mb" Then
		'response.redirect "http://m.azfinancial.co.kr"
	end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>에즈금융서비스</title>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/main2.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script type="text/javascript">
var chknum = 0; //배너 순서 체크할 변수
var arrUrl = new Array("sub6.html","sub1.html","sub10.html"); //순서대로 들어갈 url 주소

$(function(){
	$('.rolling .btn a').click(function(){
			var index = $('.rolling .btn a').index(this);
			var str = $(this).find('img').attr('src').replace('off','on');
			var str2 = $('.rolling .btn a').find('img').attr('src').replace('on','off');

            $('.rolling .btn a').find('img').attr('src',str2);
			$(this).find('img').attr('src',str);
			
			if(index == 0){
				$('.rolling .main img').attr('src','img/ynasset_2013_1main.png');
				$('.rolling .main').attr('href','sub6.html');
			} else if (index==1){
				$('.rolling .main img').attr('src','img/ynasset_2013_2main.png');
				$('.rolling .main').attr('href','sub1.html');
			} else {
				$('.rolling .main img').attr('src','img/ynasset_2013_3main.png');
				$('.rolling .main').attr('href','sub10.html');
			}
			chknum = index;
	});
	
	$('#popup_btn').click(function(){
			$('.popup').show();							
	});
	
	$('#close_btn').click(function(){
			$('.popup').hide();							
	});
});

function fnToggle(){
	$('.rolling .main img').attr('src','img/ynasset_2013_'+eval(chknum+1)+'main.png');
	$('.rolling .main').attr('href',arrUrl[chknum]);
	$('.rolling .btn a').each(function(i){
		if (i == chknum){
			$(this).find('img').attr('src','img/ynasset_2013_on.png');
		}else{
			$(this).find('img').attr('src','img/ynasset_2013_off.png');
		}
	});
	
	chknum++;
	if (chknum > 2){
		chknum = 0;
	}
}
setInterval(fnToggle,1500); // 1000이 1초, 수치 변경한 만큼 텀을 두고 이동됨
</script>
</head>

<body>
	<div class="header_wrap">
    	<div class="header">
        	<h1><a href="http://www.azfinancial.co.kr"><img src="img/ynasset_2013_03.jpg" /></a></h1>
            <ul class="gnb">
            	<li ><a href="sub6.html">회사소개</a>
                	<ul class="sub">
                    	<li><a href="sub6.html">CEO인사말</a></li>
                        <!--<li><a href="#">회사소개</a></li>-->
                        <li><a href="sub2.html">조직도</a></li>
                        <li><a href="sub3.html">제휴사</a></li>
                        <li><a href="sub4.html">찾아오시는길</a></li>
                    </ul>
                </li>
                <li><a href="sub1.html">상품정보</a>
                	<ul class="sub sub2">
                    	<!--<li><a href="#">보험설계가필요한이유</a></li>-->
                        <li><a href="sub14.html">손해보험</a></li>
                        <li><a href="sub1.html">건강보험</a></li>
                        <li><a href="sub13.html">은퇴설계</a></li>
                        <li><a href="sub11.html">어린이보험</a></li>
                    </ul>
                </li>
                <li><a href="sub7.html">재무설계</a>
                	<ul class="sub sub3">
                        <li><a href="sub5.html">재무설계란</a></li>
                         <li><a href="sub7.html">재무설계절차</a></li>
                        <li><a href="sub8.html">재무설계분야</a></li>
                    </ul>
                </li>
                <li><a href="sub9.html">인재경영</a>
                	<ul class="sub sub4">
                    	<li><a href="sub9.html">에즈금융서비스행사</a></li>
                        <!--<li><a href="#">지점별안내</a></li>-->
                        <li><a href="sub10.html">AZ교육체계</a></li>
                        <!--<li><a href="#">AZ교육동영상</a></li>-->
                        <li><a href="sub12.html">FC의역할</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="content_wrap">
    	<div class="popup">
        	<a id="close_btn" href="#">닫기</a>
        </div>
    	<div class="rolling">
        <a class="main" href="#"><img src="img/ynasset_2013_1main.png" alt="" /></a>
            <p class="btn">
				<a href="#"><img src="img/ynasset_2013_on.png" /></a>
				<a href="#"><img src="img/ynasset_2013_off.png" /></a>
				<a href="#"><img src="img/ynasset_2013_off.png" /></a>
            </p>
        </div>
        <ul class="banner">
                <li class="banner1"><a href="sub1.html">배너1</a></li>
                <li class="banner2"><a href="sub13.html">배너2</a></li>
                <li class="banner3"><a href="sub11.html">배너3</a></li>
                <li class="banner4"><a href="#">배너4</a></li>
        </ul>
		<div class="content">
    	<ul class="con1">
        	<li><a href="sub11.html"><img src="img/az_1.png" /></a></li>
        	<li><a href="sub4.html"><img src="img/az_2.png" /></a></li>
        	<li><a href="sub7.html"><img src="img/az_3.png" /></a></li>
        </ul>
		<ul class="con2">
        	<li><a href="sub12.html"><img src="img/az_4.png" /></a></li>
        	<li><a href="sub3.html"><img src="img/az_5.png" /></a></li>
        	<li><a href="#"><img src="img/az_6.png" /></a></li>
        </ul>
      	<ul class="con3">
        	<li><a href="sub2.html"><img src="img/az_7.png" /></a></li>
        	<li><a href="sub9.html"><img src="img/az_8.png" /></a></li>
        	<li><a href="sub10.html"><img src="img/az_9.png" /></a></li>
        </ul>
    	</div>
    </div>  
 	<div class="putter_wrap">
    	<p class="put"><img src="img/ynasset_2013_62.png" /></p>        
    </div>
</body>
</html>



