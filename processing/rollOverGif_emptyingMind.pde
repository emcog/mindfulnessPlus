int maxImages=14; // total # of images
int imageIndex=0; //initial image to be displayed is the first
boolean isMouseCanvas=false;
PImage[] images=new PImage[maxImages]; // The image array
//variables

void setup(){ //draws once
  size(305,331);
  frameRate(6);
  //loading the images into the array
  //don't forget to put the JPG files in the data folder!
  
  for (int i=0; i<images.length; i++){ //loading array
    images[i]=loadImage("Robin's MacBook Pro/Macintosh HD/Users/robin/Dropbox/Visual_2/3D_Projects/M+TV/images/rollOverGif_emptyingMind/EmptyingMind"+i+".jpg");
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
