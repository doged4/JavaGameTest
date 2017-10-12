class Enemy{
 float x,y;
 float step;
 PImage invader;
 
  public Enemy(float _x, float _y){
    x = _x;
    y = _y; 
    step = 0;
    invader = loadImage("invader.png");
    };
  void display()
  {
    if((step - (step % 200))%400 == 0){
    image(invader, x + step % 200, y + (step - (step % 200))/10, 50, 50);
    } else{
    image(invader, x + 200 - step % 200, y + (step - (step % 200))/10, 50, 50);
    }
  // image(invader, x + ((step - (step % 200))%400)*(200 - step % 200) + abs(((step - (step % 200))%400)-1)*(step % 200), y + (step - (step % 200))/10, 50, 50);
  }
  void update(){
    step+=(1.5 + step/1000);
  //  System.out.println(step);
  }

};