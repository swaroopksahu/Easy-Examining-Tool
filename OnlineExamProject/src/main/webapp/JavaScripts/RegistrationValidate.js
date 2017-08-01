function formValidation() {  
	var uavatar = document.registration.avatar;
	var uname = document.registration.name;
	var uuserid = document.registration.username;  
	var upassid = document.registration.password;
	var umobile = document.registration.mobile;   
	var sex = document.registration.gender;    
 
	if(avatarselect(uavatar)){
		if(allLetter(uname)){
			if(userid_validation(uuserid,5,12)){  
				if(passid_validation(upassid,7,12)){  
					if(allnumeric(umobile)){
						if(validsex(sex)){
						}  
					}   
				}  
			}  
		}  
	}  
	return false;  
} 

function avatarselect(uavatar) {  
	if(uavatar.value == "Default"){  
		alert('Select your Avatar from the List');  
		uavatar.focus();  
		return false;  
	}  
	else{  
		return true;  
	}  
}  

function allLetter(uname) {   
	var letters = /^[A-Za-z  ]+$/;  
	if(uname.value.match(letters)){  
		return true;  
	}  
	else{  
		alert('Name must have alphabet characters only');  
		uname.focus();  
		return false;  
	}  
}  


function userid_validation(uuserid,mx,my) {  
	var uid_len = uuserid.value.length;  
	if (uid_len == 0 || uid_len >= my || uid_len < mx){  
		alert("User Id should not be empty / length be between "+mx+" to "+my);  
		uuserid.focus();  
		return false;  
	}  
	return true;  
}  

function passid_validation(upassid,mx,my){  
	var passid_len = upassid.value.length;  
	if (passid_len == 0 ||passid_len >= my || passid_len < mx) {  
		alert("Password should not be empty / length be between "+mx+" to "+my);  
		upassid.focus();  
		return false;  
	}  
	return true;  
}

function allnumeric(umobile){   
	var numbers = /^\d{10}$/; 
	if(umobile.value.match(numbers)) {  
		return true;  
	}  
	else{  
		alert('Invalid Mobile Number');  
		umobile.focus();  
		return false;  
	}  
}



  