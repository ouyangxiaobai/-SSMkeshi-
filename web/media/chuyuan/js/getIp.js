

function getIP(){
	return "http://localhost:8080/keshi/";
}
 
function valPhone(phone){
    var isPhone=/^(?:13\d|15\d|18\d)\d{8}$/;
    return isPhone.test(phone);
}

