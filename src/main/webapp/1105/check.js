/**
 * 
 */function add() {
	if (frm.resvno.value.length == 0) {
		alert("예약번호가 입력 X");
		frm.resvno.focus();
		return false;
	} else if (frm.empno.value.length == 0) {
		alert("사원번호가 입력 X");
		frm.empno.focus();
		return false;
	} else if (frm.resvdate.value.length == 0) {
		alert("근무일자가 입력 X");
		frm.resvdate.focus();
		return false;
	} else if (frm.seatno.value.length == 0) {
		alert("좌석번호가 입력 X");
		frm.seatno.focus();
		return false;
	} else {
		alert("등록롼료");
		document.frm.submit();
		return true;
	}
}
function res() {
	alert("초기화 후 다시 입력!!");
	document.frm.reset();
}