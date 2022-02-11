<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deletecheck</title>
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<script type="text/javascript">
	
</script>


<style type="text/css">
h1 {
	text-align: center;
}

p {
	text-size: 20px;
	font-weight: bold;
	padding: 15px;
}

.btn-group {
	margin: auto;
	display: block;
}

label {
	display: block;
}
</style>
</head>
<body>
	<h1>회원탈퇴</h1>
	<div class="container d-flex flex-column" style="padding-top: 1rem;">

		<div class="flex-center" style="padding-top: 1rem;">
			<p>* 유의사항</p>
			<textarea id="privacy_scroll" style="resize: none; width: 100%; height: 20rem; padding: 0.5rem;" readonly>
	
회원탈퇴 시 개인정보 및 사이트이름에서 만들어진 모든 데이터는 삭제됩니다.
(단, 아래 항목은 표기된 법률에 따라 특정 기간 동안 보관됩니다.)

1. 계약 또는 청약철회 등에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률/ 보존 기간 : 5년

2. 대금결제 및 재화 등의 공급에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 / 보존 기간 : 5년

3. 전자금융 거래에 관한 기록 보존 이유 : 전자금융거래법 보존 기간 / 5년

4. 소비자의 불만 또는 분쟁처리에 관한 기록 보존 이유 : 전자 상거래 등에서의 소비자보호에 관한 법률 보존 기간 / 3년

5. 신용정보의 수집/처리 및 이요 등에 관한 기록 보존 이유 : 신용정보의 이용 및 보호에 관한 법률 보존기간 / 3년

6. 전자(세금)계산서 시스템 구축 운영하는 사업자가 지켜야 할 사항 고시(국세청 고시 제 2016-3호) (전자세금계산서 사용자에 한함) : 5년
(단, (세금)계산서 내 개인식별번호는 3년 경과 후 폐기) 
		</textarea>
			<label for="agree1"> <input type="checkbox" id="agree1" name="agree1" value="1"> <span>위 내용을 읽었으며, 동의합니다.<strong>(필수)</strong></span>
			</label>
		</div>

	</div>

	<div class="container d-flex flex-column" style="padding-top: 1rem;">

		<div class="flex-center" style="padding-top: 1rem;">
			<p>* 유의사항</p>

			<textarea id="privacy_scroll" style="resize: none; width: 100%; height: 20rem; padding: 0.5rem;" readonly>
			
- 회원탈퇴 후에는 사이트이름에서 이용하셨던 아이디의 모든 정보가 삭제되며, 복구가 불가능 합니다.

- 회원탈퇴 신청 후, 7일 동안은 동일한 아이디로 재가입이 불가능하며 아이디 보유제한을 초과하신 경우 추가적으로 다른 아이디에 본인확인 정보를 등록하실 수 없습니다.

- 탈퇴신청 후 7일 안에 로그인하시면 회원탈퇴 신청을 취소할 수 있습니다.

- 회원탈퇴 신청 당시의 회원 상태에 따라 재가입이 불가능 할 수 있습니다.

- 회원가입 이후 게시판에 등록하신 게시물들은 회원탈퇴 후에도 삭제되지 않고 유지됩니다. 삭제를 원하시는 경우 반드시 게시물을 직접 삭제하신 후에 회원탈퇴를 진행해 주세요.
	</textarea>
			<label for="agree2"> <input type="checkbox" id="agree2" name="agree2" value="1"> <span>위 내용을 읽었으며, 동의합니다.<strong>(필수)</strong></span>
			</label> <label for="agree_all"> <input type="checkbox" name="agree_all" id="agree_all"> <span>모두 동의합니다</span> <br />
			</label>
		</div>
	</div>
	<div style="text-align: center;">
		<div id="btn-group" class="btn-group" aria-label="Basic example" style="display: inline-block;">
			<form action="DeleteForm.jsp" method="post" onSubmit="return CheckForm(this)">
				<button type="submit" id="nextBtn" class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">다음</button>
				<br>
			</form>
		</div>
		<div id="btn-group" class="btn-group" aria-label="Basic example" style="display: inline-block;">
			<form action="memberPageUpdate2.jsp" method="post">
				<button type="submit" class="btn btn-success btn-sm d-grid gap-2 mx-auto text-center">취소</button>
				<br>
			</form>
		</div>
	</div>
	<script type="text/javascript">
//동의 모두선택 / 해제
const agreeChkAll = document.querySelector('input[name=agree_all]');
    agreeChkAll.addEventListener('change', (e) => {
    let agreeChk = document.querySelectorAll('input[name=agree1]');
    for(let i = 0; i < agreeChk.length; i++){
      agreeChk[i].checked = e.target.checked;
    }
    
    let agreeChk2 = document.querySelectorAll('input[name=agree2]');
    for(let i = 0; i < agreeChk2.length; i++){
      agreeChk2[i].checked = e.target.checked;
    }
});
</script>
	<script type="text/javascript">
function CheckForm(Join){ 
	
	   var chk1=document.querySelector('input[name=agree1]').checked;
	   var chk2=document.querySelector('input[name=agree2]').checked;
	   if(chk1==""){
	    alert('약관에 동의 해 주세요');
	    return false;
	   }
	   if(chk2==""){
	    alert('약관에 동의 해 주세요');
	    return false;
	   }
	}
</script>

</body>
</html>
