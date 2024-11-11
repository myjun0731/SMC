/**
 * 
 */
function add() {
	if (frm.custname.value.length == 0) {
		alert("회원성명이 입력되지 않음.");
		frm.custname.focus();
	} else if (frm.phone.value.length == 0) {
		alert("회원전화가 입력되지 않음.");
		frm.phone.focus();

	} else if (frm.adress.value.length == 0) {
		alert("회원주소가 입력되지 않음.");
		frm.adress.focus();
	} else if (frm.joindate.value.length == 0) {
		alert("가입일자가 입력되지 않음.");
		frm.joindate.focus();
	} else if (frm.grade.value.length == 0) {
		alert("고객등급이 입력되지 않음.");
		frm.grade.focus();
	} else if (frm.city.value.length == 0) {
		alert("도시코드가 입력되지 않음.");
		frm.city.focus();
	} else {
		alert("회원등록 완료.");
		document.frm.submit();
	}

	function res() {
		alert("정보를 지우고 처음부터 다시 입력.");
		document.frm.reset();
	}
}