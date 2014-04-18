var username;
var password;

$(document).ready(function(){
	
	//Check if user is logged in. If yes, redirect to home page.
	if(window.localStorage.getItem("username") != undefined){
		window.location.assign("home.html");
	}
	
	$("#login_form input").keypress(function (e) {
	    if (e.keyCode == 13) {
	       login();
	    }
	 });
});

function login() {
		//Call login API and validate user. 
		//If validated, store the user details and proceed to home.
	username = $("#login_username").val().trim();
	password = $("#login_password").val().trim();
	
		if(validateInput() == false)
			{
			alert('Please enter Username and Password');
			return false;
			}
		
		$.ajax({
		    url: 'http://tracker.manoharprabhu.cloudbees.net/loginUser',
		    data: {'username':username,'password':password},
		    dataType: 'json',
		    crossDomain: true,
		    success: checkResponse,
		    error:function(xml){
		    	alert('failed');
		    }
		});
		
		return false;
	
}

function validateInput(){
	var username = $("#login_username").val().trim();
	var password = $("#login_password").val().trim();
	
	if(username.length == 0 || password.length == 0)
		return false;
	
}

function checkResponse(data){
	if(data.success == true){
		window.localStorage.username = username;
		window.location.assign("home.html");
	} else {
		alert('log in failed');
	}
}
