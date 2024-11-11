/**
 * 
 */function add() {
	if (frm.artist_id.value.length == 0) {
		alert("참가번호가 입력 X");
		frm.artist_id.focus();
		return false;
	} else if (frm.artist_name.value.length == 0) {
		alert("참가자명가 입력 X");
		frm.artist_name.focus();
		return false;
	} else if (frm.year.value.length == 0 || frm.month.value.length == 0 || frm.day.value.length == 0) {
		alert("생년월일 입력 X");
		frm.year.focus();
		return false;
	} else if (frm.gender[0].checked == false || frm.gender[1].checked == false) {
		alert("성별이 입력 X");
		frm.gender.focus();
		return false;
	} else if (frm.talent.value.length == 0) {
		alert("특기 입력 X");
		frm.talent.focus();
		return false;
	} else if (frm.agency.value.length == 0) {
		alert("소속사 입력 X");
		frm.agency.focus();
		return false;
	} else {
		alert("참가신청 완료");
		frm.talent.focus();
		return true;
	}
}
function res() {
	alert("초기화 후 다시 입력!!");
	document.frm.reset();
}