var mouseX = 400;
var horizontalVelocity = 0;
var verticalVelocity = -1;

var canvasWidth = 400;
var canvasHeight = 400;

var xDirection = 1;
var yDirection = -1;

var paddleWidth = 150;
var paddleHeight = 20;
var context;

var paddleYPos = 20;

var ballXPos = 200;
var ballYPos = 200;

var ballRadius = 15;

window.onmousemove = handleMouseMove;
function handleMouseMove(event) {
        event = event || window.event; // IE-ism
        mouseX = event.clientX;
}
    
    
function clearCanvas(){
    	var canvas = $('#canvas')[0]; // or document.getElementById('canvas');
		canvas.width = canvas.width;
}

function redrawPaddle(){
		context.rect(mouseX-75, paddleYPos, paddleWidth, paddleHeight);
		context.fill();

}

function redrawBall(){

	  context.beginPath();
      context.arc( ballXPos, ballYPos , ballRadius, 0, 2 * Math.PI, false);
      context.fillStyle = 'green';
      context.fill();
      
      ballXPos =  (ballXPos + (horizontalVelocity)) ;
      ballYPos = (ballYPos + (verticalVelocity));
      
      	
}

function checkIfPaddleCollision(){
	
	if(ballXPos >= (mouseX - (paddleWidth/2) - 30 + ballRadius)  &&
		ballXPos <= (mouseX + (paddleWidth/2) + 30 - ballRadius)
	){
		
		if(ballYPos <= paddleHeight + paddleYPos + ballRadius) {
		
				//yDirection = yDirection * -1;
				verticalVelocity*=-1;
				
				
		}
	}
}


function checkIfWallCollision(){
	
	if((ballXPos <= ballRadius) ||
		ballXPos >= (canvasWidth - ballRadius) )
		{
		
				//xDirection = xDirection * -1;
				horizontalVelocity *= -1;
		} else if(ballYPos >= (canvasHeight - ballRadius)) {
				//yDirection = yDirection * -1;
				verticalVelocity *= -1;
			
		}
}


function initialize(){
		var canvas = document.getElementById('canvas');
		context = canvas.getContext("2d");
		$('#canvas').css('background-color', 'white');
		redrawPaddle();
}
    
$(document).ready(function() {

		initialize();
		setInterval(function() {
		clearCanvas();
		redrawPaddle();
		redrawBall();	
		checkIfPaddleCollision();
		checkIfWallCollision();
		
	}, 5);

});

