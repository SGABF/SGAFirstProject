<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

String ctx = request.getContextPath();	//콘텍스트명 얻어오기.

response.setHeader("Pragma-directive", "no-cache");
response.setHeader("Cache-directive", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache");
response.setDateHeader("Expires",0); 

%>
<!DOCTYPE html>
<html>
<head>
<title>CaptCha 예제2</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Imagetoolbar" content="no" />
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript">
var rand;


//캡차 오디오 요청
function audioCaptcha() {
	$.ajax({
		url: 'captcha/CaptChaAudio.jsp',
		type: 'POST',
		dataType: 'text',
		data: 'rand=' + rand + '&ans=y',
		async: false,		
		success: function(resp) {
			var uAgent = navigator.userAgent;
			var soundUrl = 'captcha/CaptChaAudio.jsp?rand=' + resp + '&ans=' + resp;
			//console.log(soundUrl);
			if (uAgent.indexOf('Trident') > -1 || uAgent.indexOf('MSIE') > -1) {
				winPlayer(soundUrl+'&agent=msie');
			} else if (!!document.createElement('audio').canPlayType) {
				try { new Audio(soundUrl).play(); } catch(e) { winPlayer(soundUrl); }
			} else window.open(soundUrl, '', 'width=1,height=1');
		}
	});
}
function winPlayer(objUrl) {
	$('#audiocatpch').html(' <bgsound src="' + objUrl + '">');
}

//캡차 이미지 요청 (캐쉬문제로 인해 이미지가 변경되지 않을수있으므로 요청시마다 랜덤숫자를 생성하여 요청)
function changeCaptcha() {
	rand = Math.random();
	$('#catpcha').html('<img src="<%=ctx%>/captcha/CaptChaImg.jsp?rand=' + rand + '"/>');
}

$(document).ready(function() {
	
	changeCaptcha(); //캡차 이미지 요청
	
	$('#reLoad').click(function(){ changeCaptcha(); }); //새로고침버튼에 클릭이벤트 등록
	$('#soundOn').click(function(){ audioCaptcha(); });	//음성듣기버튼에 클릭이벤트 등록
	
	//확인 버튼 클릭시
	$('#frmSubmit').click(function(){
		if ( !$('#answer').val() ) {
			alert('이미지에 보이는 숫자 또는 스피커를 통해 들리는 숫자를 입력해 주세요.');
		} else {
			$.ajax({
				url: 'captcha/captchaSubmit.jsp',
				type: 'POST',
				dataType: 'text',
				data: 'answer=' + $('#answer').val(),
				async: false,		
				success: function(resp) {
					alert(resp);
					$('#reLoad').click();
					$('#answer').val('');
				}
			});
		}
	});
});
</script>

<script type="text/javascript">

var check = false;



function clearInput(){


	var el = document.getElementById('answer');
	
	el.value = "";
	
}


</script>

<script type="text/javascript">
function btnDisabled()  {
	  const target = document.getElementById('check22');
	  target.disabled = true;
	}
</script>

</head>
<body>
	<div id="catpcha"></div>
	<div id="audiocatpch" style="display: none;"></div>

	<input id="reLoad" class="reLoad" name="reLoad" type="button" value="새로고침" onclick="clearInput()"/>
	
	<input id="soundOn" type="button" value="음성듣기" />
	<br />
	
	<input type="text" id="answer" class="answer" name="answer" value="" autofocus="autofocus" />
	
	<input type="button" id="frmSubmit" value="확인">


</body>
</html>