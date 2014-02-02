var t1;
var t2;

function Joint() {	

	perlin = new Perlin();
	this.position = new PVector();
	this.t1 = random(10);
	this.t2 = random(10);
}

Joint.prototype.draw = function(){
	noStroke();
	fill(255,255,255);

	this.t1 += .001;
	this.t2 += .002;

	this.position = new PVector(map(perlin.noise(this.t1),.25,.75,0,width), map(perlin.noise(this.t2),.25,.75,0,height));
}