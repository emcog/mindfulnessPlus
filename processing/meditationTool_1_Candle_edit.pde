float backgroundColour=100;
float change=0.5;
//backgroundColour should have a fixed range

void setup(){
  size(600,600);
}

void draw(){
  background(backgroundColour);
  constrain(backgroundColour,0,255);
  noStroke();
  fill(209);
  ellipse(width/2,height/2,width/3.5,height/3.5);
  stroke(62);
  strokeWeight(1.3);
  noFill();
  ellipse(width/2,height/2,width/3,height/3);
  ellipse(width/2,height/2,width/3.2,height/3.2);

  if(mousePressed){
    if(backgroundColour<255){
      backgroundColour=backgroundColour+change;
    }
  }

  else{
    if(backgroundColour>0){
      backgroundColour=backgroundColour-change;
    }
  }

}
