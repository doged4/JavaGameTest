class Enemy{
 float x,y;
 final private float X_INITIAL, Y_INITIAL;
 float step;
 final private float RANGE;
 final private PImage COSTUME_A, COSTUME_B;
 
  public Enemy(float _x, float _y, PImage _costumeA, PImage _costumeB){
    this.X_INITIAL = _x;
    this.Y_INITIAL = _y; 
    this.step = 0;
    this.RANGE = 100;
    this.COSTUME_A = _costumeA;
    this.COSTUME_B = _costumeB;
    };
  private void display()
  {
    if(int(this.step/25 % 2)==0){
      image(this.COSTUME_A, x, y, 45, 30);
    }else{
      image(this.COSTUME_B, x, y, 45, 30);
    }
    
  }
  private void update(float speed){
    if((this.step - (this.step % this.RANGE))%(2*this.RANGE) == 0){
      x = this.X_INITIAL + this.step % this.RANGE;
    } else{
      x = this.X_INITIAL + this.RANGE - this.step % this.RANGE;
    }
    y = this.Y_INITIAL + (this.step - (this.step % this.RANGE))/10;
    
    this.step+=speed;
    if(random(0,1)<0.001){
    thingList.add(new EnemyThing(this.x+22.5,this.y+15));
    
    }
  }

};