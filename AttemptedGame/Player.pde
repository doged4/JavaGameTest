class Player {
  float x,y;
  float xspeed, yspeed;
  
  
  public Player(float x, float y, float xspeed, float yspeed){
    this.x = x;
    this.y = y;
    this.yspeed = yspeed;
    this.xspeed = xspeed;
   // this.color = (random(0,255), random(0,255), random(0,255));

   }; 
   void update (){
   this.x += xspeed;
   this.y += yspeed;
   }
   public void display(){
   //fill(color);
   stroke(0,0,0);
   rect(this.x, this.y, 20, 20);
   }
};