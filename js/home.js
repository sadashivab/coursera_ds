function handle_geolocation_query(position){
	
	$.ajax({
		    url: 'http://tracker.manoharprabhu.cloudbees.net/addLocationData',
		    data: {'username':username,'password':password,'latitude':position.coords.latitude,'longitude':position.coords.longitude},
		    dataType: 'json',
		    crossDomain: true,
		    success: checkResponse,
		    error:function(xml){
		    	alert('failed');
		    }
		});	
		
          //  alert('Lat: ' + position.coords.latitude +
            //      ' Lon: ' + position.coords.longitude);
}

function error(error)
        {
            switch(error.code)
            {
                case error.PERMISSION_DENIED: alert("user did not share geolocation data");
                break;
 
                case error.POSITION_UNAVAILABLE: alert("could not detect current position");
                break;
 
                case error.TIMEOUT: alert("retrieving position timed out");
                break;
 
                default: alert("unknown error");
                break;
            }
        }

$(document).ready(function(){
	
setInterval(function(){
var username = window.localStorage.username;
var password = window.localStorage.password;

navigator.geolocation.getCurrentPosition(
     handle_geolocation_query,
     // Optional settings below
     error,
     {
     	enableHighAccuracy:true,
     	timeout:0
     }
);

	/*
	$.ajax({
		    url: 'http://tracker.manoharprabhu.cloudbees.net/addLocationData',
		    data: {'username':username,'password':password},
		    dataType: 'json',
		    crossDomain: true,
		    success: checkResponse,
		    error:function(xml){
		    	alert('failed');
		    }
		});	
*/
},10000);	
	
});


