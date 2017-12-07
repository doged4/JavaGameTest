class Enemy{
 float x,y;
 float xf, yf;
 float step;
 float range;
 PImage costumeA, costumeB, costumeShot;
 boolean shot;
 int shotCount;
 
  public Enemy(float _x, float _y, PImage _costumeA, PImage _costumeB){
    this.xf = _x;
    this.yf = _y; 
    this.step = 0;
    //this.range = 150;
    this.range = 100;
    this.costumeA = _costumeA;
    this.costumeB = _costumeB;
    this.costumeShot = loadImage("enemyBlip.png");
    this.shot = false;
    this.shotCount =0;
    };
  void display()
  {
     if(this.shotCount < 10 && this.shotCount > 0){
      image(this.costumeShot, x, y, 45, 30);
    }else{
      
      if(int(this.step/25 % 2)==0){
        image(this.costumeA, x, y, 45, 30);
      }else{
        image(this.costumeB, x, y, 45, 30);
      }
   /* if(this.shot){
      image(this.costumeShot, x, y, 45, 30);
    }*/
    }
    
  }
  void update(float speed){
    if((this.step - (this.step % this.range))%(2*this.range) == 0){
      x = this.xf + this.step % this.range;
    } else{
      x = this.xf + this.range - this.step % this.range;
    }
    y = this.yf + (this.step - (this.step % this.range))/10;
    
   // this.step+=(1.5 + this.step/1000);
    this.step+=speed;
  if(random(0,1)<0.001){
    thingList.add(new EnemyThing(this.x+22.5,this.y+15));
    
    }
  }

};