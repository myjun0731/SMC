function add(){
	if(frm.custname.values.length==0){
		alert("회원성명이 입력되지 않앗습니다");
		frm.cutname.focus();
		return false;
	}else if(frm.custname.values.length==0){
			alert("회ㅜ언전화가 입력되지 않앗습니다");
			frm.phone.focus();
			return false;
		}
}