class Enemy{
 float x,y;
 float xf, yf;
 float step;
 float range;
 int type;
 
  public Enemy(float _x, float _y, int _type){
    type = _type;
    xf = _x;
    yf = _y; 
    step = 0;
    //range = 150;
    range = 100;
    };
  void display(PImage invader)
  {
    image(invader, x, y, 45, 30);
 //   if((step - (step % range))%(2*range) == 0){
 //   image(invader, xf + step % range, yf + (step - (step % range))/10, 50, 50);
  //  } else{
//    image(invader, xf + range - step % range, yf + (step - (step % range))/10, 50, 50);
  //  }
  // image(invader, xf + ((step - (step % range))%400)*(range - step % range) + abs(((step - (step % range))%400)-1)*(step % range), yf + (step - (step % range))/10, 50, 50);
  }
  void update(float speed){
    if((step - (step % range))%(2*range) == 0){
      x = xf + step % range;
    } else{
      x = xf + range - step % range;
    }
    y = yf + (step - (step % range))/10;
    
   // step+=(1.5 + step/1000);
    step+=speed;
  //  System.out.println(step);
  if(random(0,1)<0.001){
    thingList.add(new EnemyThing(this.x+22.5,this.y+15));
    
    }
  }

};