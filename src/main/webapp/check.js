/**
 * 
 */
function add() {

	if (frm.custname.value.length == 0) {

		alert("회원성명이 입력되지 않음.");
		frm.custname.focus();

	} else if (frm.phone.value.length == 0) {
		alert("회원전화가 입력되지 않음.");
		frm.custname.focus();

	} else if (frm.adress.value.length == 0) {
		alert("회원주소가 입력되지 않음.");
		frm.custname.focus();

	}
}