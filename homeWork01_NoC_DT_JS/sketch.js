var joints1 = new Array();
var joints2 = new Array();
var joints3 = new Array();
var joints4 = new Array();
var joints5 = new Array();

var Joint;

var width = 900;
var height = 900;

function setup(){
	createGraphics(width, height);
	background(255);

  for(var i = 0; i<5; i++){

    joints1.push(new Joint());
    joints2.push(new Joint());
    joints3.push(new Joint());
    joints4.push(new Joint());
    joints5.push(new Joint());
  }
}

function draw(){
		

		noStroke();
  		fill(255, 255, 255, 10);
  		rect(0, 0, width, height);
		
		for(var i = 0; i < joints1.length; i++) {
			var j1 = joints1[i];
			var j2 = joints2[i];
			var j3 = joints3[i];
			var j4 = joints4[i];
			var j5 = joints5[i];

			j1.draw();
			j2.draw();
			j3.draw();
			j4.draw();
			j5.draw();

			stroke(0);

			noFill();

			beginShape();

			vertex( width/2, height/2);
    		vertex( j1.position.x, j1.position.y ); 
    		vertex( j2.position.x, j2.position.y );
    		vertex( j3.position.x, j3.position.y );
    		vertex( j4.position.x, j4.position.y );
    		vertex( j5.position.x, j5.position.y );
    		vertex(width/2, height/2);

    		endShape();


		}

};

