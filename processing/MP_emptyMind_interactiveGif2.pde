/* @pjs preload="https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind0.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind1.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind2.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind3.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind4.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind6.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind7.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind8.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind9.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind10.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind11.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind12.jpg,https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind13.jpg"; */

int maxImages=14; // total # of images
int imageIndex=0; //initial image to be displayed is the first
boolean isMouseCanvas=false;
PImage[] images=new PImage[maxImages]; // The image array
//variables

void setup(){ //draws once
  size(305,331);
  frameRate(10);
  //loading the images into the array
  //don't forget to put the JPG files in the data folder!
  
  for (int i=0; i<images.length; i++){ //loading array
    images[i]=loadImage("https://dl.dropboxusercontent.com/u/5593313/MP_EmptyingMind/EmptyingMind"+i+".jpg");
  }
}

void draw(){ //keeps on redrawing
   //background(0);

 if(!isMouseCanvas) {
    image(images[imageIndex],0,0); // Displaying first image
  }
 
  else {
    image(images[imageIndex],0,0); // Displaying one image
    imageIndex=(imageIndex+1)  %  images.length; //Followed by the next image and the next
  }
}

void mouseOver(){ //prcessing.js language
  isMouseCanvas=true;
}
void mouseOut(){ //prcessing.js language
  isMouseCanvas=false;
}
