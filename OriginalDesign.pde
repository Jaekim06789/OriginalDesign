// import gifAnimation.*;

int x = 250; 
int y = 250;
float eyeWidth = 10;
float eyeHeight = 30;
int randomWidth= 150; 
int randomHeight = 150;
int thang = 0;
int speechBubbleX = 0;
int speechBubbleY = 0;
int counter = 0;
PImage swirlOne;
PImage swirlTwo;
void setup(){
 size(500, 500);
 swirlOne = loadImage("SWIRL2.gif", "gif");
 swirlTwo = loadImage("SWIRL1.gif", "gif");
 frameRate(60);
 draw();
}

void draw(){
  
  if(thang == 0){
    //Counter Reset
    counter = 0;
    //Background Reset
    background(197);
    
    //Random Circles
    fill(random(0,255), random(0,255), random(0,255));
    ellipse(x, y, randomWidth, randomHeight);
    //Smiley Head
    fill(255, 204, 0);
    ellipse(x, y, 150, 150);
    //Smiley Eyes
    fill(0);
    ellipse(x-35, y-20, eyeWidth, eyeHeight);
    ellipse(x+35, y-20, eyeWidth, eyeHeight);
    //Smiley Mouth
    stroke(0);
    curve(x, y-400,x-60, y+10, x+60, y+10, x, y-400); 
    //The Speech Bubble Bottom
    fill(255);
    triangle(speechBubbleX+340, speechBubbleY+205, speechBubbleX+345, speechBubbleY+180,speechBubbleX+ 370, speechBubbleY+180);
    //The Box of Speech Bubble
    rect(speechBubbleX+310, speechBubbleY+80, 200, 100);
    //"Click me" Text
    fill(0);
    textSize(40);
    text("CLICK ME", speechBubbleX+315, speechBubbleY+140);
    
    //Resets the Variables
    eyeWidth = 10;
    eyeHeight = 30;
    randomWidth = 150;
    randomHeight= 150;
    speechBubbleX = 0;
    speechBubbleY = 0;
    
   }else if (thang == 1){
     //Adds to Counter
     counter = counter + 1;
     //Random Circles
    fill(random(0,255), random(0,255), random(0,255));
    ellipse(x, y, randomWidth, randomHeight);
    ellipse(x, y, randomWidth - (counter), randomHeight - (counter));
    
    //Checks the Counter
    if(counter >= 100){
      tint(255, 100);
      image(swirlOne, 0, 0, 500, 500);
    }
    
    if(counter >= 250){
      tint(255, 127);
      image(swirlTwo, 0, 0, 500, 500);
    }
      
    //Smiley Head
    tint(0);
    fill(255, 204, 0);
    ellipse(x, y, 150, 150);
    //Smiley Eyes
    fill(0);
    ellipse(x-35, y-20, eyeWidth, eyeHeight);
    ellipse(x+35, y-20, eyeWidth, eyeHeight);
    //Smiley Mouth
    stroke(0);
    curve(x, y-400,x-60, y+10, x+60, y+10, x, y-400); 
    //The Speech Bubble Bottom
    fill(255);
    triangle(speechBubbleX+340, speechBubbleY+205, speechBubbleX+345, speechBubbleY+180,speechBubbleX+ 370, speechBubbleY+180);
    //The Box of Speech Bubble
    rect(speechBubbleX+310, speechBubbleY+80, 200, 100);
    //"Click me" Text
    fill(0);
    textSize(40);
    text("CLICK ME", speechBubbleX+315, speechBubbleY+140);
    
    //Da Changes Bruh
    eyeWidth = eyeWidth + 0.1;
    eyeHeight = eyeHeight + 0.1;
    randomWidth = randomWidth + 1;
    randomHeight = randomHeight + 1; 
    speechBubbleX = speechBubbleX + 1000;
    speechBubbleY = speechBubbleY + 1000;
  }
  
  if(x > 600){
    x = 0; 
  }
}

//class Animation{
//  PiImage[] images;
//  int imageCount;
//  int frame;
  
//  Animation(String imagePrefix, int count){
//    imageCount = count;
//    images = new PImage[imageCount];
    
//    for(int i = 0; i < imageCount; i++){
//      String filename = imagePrefix + nf(i, 4) + ".gif";
//      images[i] = loadImage(filename);
//    }
//    void display(float xpos, float ypos){
//      frame = (frame+1) % imageCount;
//      image(images[frame], xpos, ypos);
//    }
    
//    int getWidth(){
//      return images[0].width;
//    }
//  }
//}

void mousePressed(){
  if (thang == 0){
    thang = 1;
  }else if(thang == 1){
    thang = 0;
  }else{
    thang = 0;
  }
}