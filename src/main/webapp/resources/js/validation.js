function CheckAddProduct() {

	let productId = document.getElementById("productId");
	let name = document.getElementById("name");
	let unitPrice = document.getElementById("Price");
	
	// 상품아이디 체크
	if (!check(/^P[0-9]{3,11}$/, productId, "[상품 코드]\nP와 숫자를 조합하여 4~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요"))
		return false;
	// 상품명 체크
	if (name.value.length < 3 || name.value.length > 12) {
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	// 상품 가격 체크1
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	// 상품 가격 체크2
	if (unitPrice.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newProduct.submit()
}