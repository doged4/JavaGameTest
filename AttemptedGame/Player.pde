class Player {
  float x,y;
  float xspeed, yspeed;
  PImage playerImage;
  
  
  
  public Player(float x, float y, float xspeed, float yspeed){
    this.x = x;
    this.y = y;
    this.yspeed = yspeed;
    this.xspeed = xspeed;

   }; 
   void update (){
     this.x += xspeed;
     this.y += yspeed;
    /* meplayer.yspeed = meplayer.yspeed * .95;
     meplayer.xspeed = meplayer.xspeed * .95;
     if (sqrt(meplayer.yspeed * meplayer.yspeed) < .1){
       meplayer.yspeed = 0;
     } 
     if (sqrt(meplayer.xspeed * meplayer.xspeed) < .1){
      meplayer.xspeed = 0;
     }*/
   }
   public void display(){
   //stroke(0,0,0);
   stroke(255,255,255);
   //fill(0,255,0); 
   image(playerImage, this.x, this.y, 50, 20);
   //rect(this.x, this.y, 40, 20);
   }
};