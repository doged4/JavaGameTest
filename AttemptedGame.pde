void setup(){
  size(800,800);
  new Player(200.0,200.0,0.0,0.0);
};
void draw(){
  background(0,0,0);
  Player.update();
  Player.display();

}