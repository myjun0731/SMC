function add() {
	if (frm.custname.values.length == 0) {
		alert("회원성명이 입력되지 않앗습니다");
		frm.cutname.focus();
		return false;
	} else if (frm.phone.values.length == 0) {
		alert("회ㅜ언전화가 입력되지 않앗습니다");
		frm.phone.focus();
		return false;
	} else if (frm.address.values.length == 0) {
		alert("회ㅜ언주소가 입력되지 않앗습니다");
		frm.address.focus();
		return false;
	} else if (frm.joindate.values.length == 0) {
		alert("가입일자가 입력되지 않앗습니다");
		frm.joindate.focus();
		return false;
	} else if (frm.grade.values.length == 0) {
		alert("고객등급이 입력되지 않앗습니다");
		frm.grade.focus();
		return false;
	} else if (frm.city.values.length == 0) {
		alert("도시코드가 입력되지 않앗습니다");
		frm.city.focus();
		return false;
	}else
	alert("회원등룍 완료");
	document.frm.submit();
	return true;
}
function res(){
	alert("지우고 다시 첨부터 ㄱㄱ");
	document.frm.reset();
}