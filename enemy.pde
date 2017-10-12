class Enemy{
 float x,y;
 float step;
 PImage invader;
 float range;
 
  public Enemy(float _x, float _y){
    x = _x;
    y = _y; 
    step = 0;
    invader = loadImage("invader.png");
    range = 150;
    };
  void display()
  {
    if((step - (step % range))%(2*range) == 0){
    image(invader, x + step % range, y + (step - (step % range))/10, 50, 50);
    } else{
    image(invader, x + range - step % range, y + (step - (step % range))/10, 50, 50);
    }
  // image(invader, x + ((step - (step % range))%400)*(range - step % range) + abs(((step - (step % range))%400)-1)*(step % range), y + (step - (step % range))/10, 50, 50);
  }
  void update(){
   // step+=(1.5 + step/1000);
    step+=(1.5 + sqrt(step)/50);
  //  System.out.println(step);
  }

};