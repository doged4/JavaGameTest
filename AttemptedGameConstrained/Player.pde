class Player {
  float x,y;
  float xspeed;
  
  
  public Player(float x, float y, float xspeed){
    this.x = x;
    this.y = y;
    this.xspeed = xspeed;

   }; 
   private void update (){
     this.x += xspeed;
    
  
     meplayer.xspeed = meplayer.xspeed * .95;

     if (sqrt(meplayer.xspeed * meplayer.xspeed) < .1){
      meplayer.xspeed = 0;
     }
   }
   private void display(){
     stroke(0,0,0);
     rect(this.x, this.y, 20, 20);
   }
};