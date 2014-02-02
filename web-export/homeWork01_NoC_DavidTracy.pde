ArrayList<Joint> joints1;
ArrayList<Joint> joints2;
ArrayList<Joint> joints3;
ArrayList<Joint> joints4;
ArrayList<Joint> joints5;

void setup() {
  size(600, 400);
  background(0);

  joints1 = new ArrayList<Joint>();
  joints2 = new ArrayList<Joint>();
  joints3 = new ArrayList<Joint>();
  joints4 = new ArrayList<Joint>();
  joints5 = new ArrayList<Joint>();

  for (int i = 0; i < 10; i ++) {
    joints1.add(new Joint());
    joints2.add(new Joint());
    joints3.add(new Joint());
    joints4.add(new Joint());
    joints5.add(new Joint());
  }
}

void draw() {

  noStroke();
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);

  for (int i = 0; i < joints1.size(); i++) {    
    Joint j1 = joints1.get(i); 
    Joint j2 = joints2.get(i); 
    Joint j3 = joints3.get(i);
    Joint j4 = joints4.get(i);
    Joint j5 = joints4.get(i);   
    j1.drawJoint();
    j2.drawJoint();
    j3.drawJoint();
    j4.drawJoint();
    j5.drawJoint();

    println(j1.location.x);
    
    stroke(255,255,255);
    
    noFill();
    beginShape();
    
    vertex( width/2, height/2);
    vertex( j1.location.x, j1.location.y ); 
    vertex( j2.location.x, j2.location.y );
    vertex( j3.location.x, j3.location.y );
    vertex( j4.location.x, j4.location.y );
    vertex( j5.location.x, j5.location.y );
    vertex(width/2, height/2);
        
    endShape();


    //    for (int j = 0; j < balls.size(); j++) { 
    //
    //      Ball b2 = balls.get(j);
    //      if( b2 == b ) {
    //        continue;
    //      }      
    //
    //      PVector dVector = PVector.sub(b.location, b2.location);
    //      float distance = dVector.mag();
    //
    //      if (distance < b.getRadius() + b2.getRadius()) {
    //        b.setColor( color(255, 0, 0) );
    //      }
    //      else {
    //        b.setColor( color( 255, 255, 255 ) );
    //      }
    //    }
  }
}

class Joint {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float t1 = random(10);
  float t2 = random(10);
  float radius = 3;
  color mColor = color(255, 255, 255);

  Joint() { 
    location = new PVector();
  }
  
  void setColor( color newColor ) { mColor = newColor; }
  float getRadius() { return radius; }
  
  void drawJoint() {

    noStroke();
    fill(mColor);

    t1 += .001;
    t2 += .002;

    //the argument for noise() is time ... we need a variable t
    location = new PVector(map(noise(t1), 0, 1, 0, width), map(noise(t2), 0, 1, 0, height));

    ellipse(location.x, location.y, radius, radius);
  }
}


