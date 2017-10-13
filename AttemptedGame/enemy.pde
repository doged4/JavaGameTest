class Enemy{
 float x,y;
 float xf, yf;
 float step;
 PImage invader;
 float range;
 
  public Enemy(float _x, float _y){
    xf = _x;
    yf = _y; 
    step = 0;
    invader = loadImage("invader.png");
    range = 150;
    };
  void display()
  {
    image(invader, x, y, 50, 50);
 //   if((step - (step % range))%(2*range) == 0){
 //   image(invader, xf + step % range, yf + (step - (step % range))/10, 50, 50);
  //  } else{
//    image(invader, xf + range - step % range, yf + (step - (step % range))/10, 50, 50);
  //  }
  // image(invader, xf + ((step - (step % range))%400)*(range - step % range) + abs(((step - (step % range))%400)-1)*(step % range), yf + (step - (step % range))/10, 50, 50);
  }
  void update(){
    if((step - (step % range))%(2*range) == 0){
      x = xf + step % range;
    } else{
      x = xf + range - step % range;
    }
    y = yf + (step - (step % range))/10;
    
   // step+=(1.5 + step/1000);
    step+=(1.5 + sqrt(step)/50);
  //  System.out.println(step);
  }

};