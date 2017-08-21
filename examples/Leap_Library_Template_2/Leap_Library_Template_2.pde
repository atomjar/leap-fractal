import de.voidplus.leapmotion.*;

LeapMotion leap;
Finger finger_thumb;
Finger finger_index;
Finger finger_ring;
Finger finger_pink;

void setup(){
  size(800, 800, P3D);

  leap = new LeapMotion(this);
}

void draw(){
  background(255);
  
  // ===============HANDS=================
  for(Hand hand : leap.getHands()){
  //for(int i = 0; hand.length; i++) {
 

    //hand.draw();
    int     hand_id          = hand.getId();
    PVector hand_position    = hand.getPosition();
    //println(hand.getPosition().x); //prints out just the x value of hand position -- cant repeat for y, z

    
    finger_thumb = hand.getThumb();
    finger_index = hand.getIndexFinger();
    finger_ring  = hand.getRingFinger();
    finger_pink  = hand.getPinkyFinger();
    
    
    //--------DRAWING----------
    
    // FINGERS
    for(Finger finger : hand.getFingers()){
      
      //------- Basics------------
      //finger.draw();
      //PVector finger_position   = finger.getPosition();
      //println(finger_thumb.getPosition().x); //isolates the specific finger based on variable name 
    }
     drawCircle(400, 400, 400);
  } //for
} //draw
  
  
  void drawCircle(int x, int y, int d) {
  stroke(200, 0, 0);
  fill(0);
  ellipse(x, y, finger_thumb.getPosition().x, d);
  if (d > 10) {
    drawCircle(x + d/2, y, d/2);
    drawCircle(x - d/2, y, d/2);
  }
}