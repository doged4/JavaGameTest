public class ThingCreated{
  float x,y;
 // void
  public ThingCreated(float _x, float _y){
    x = _x;
    y = _y;
  };
  void update() {
    y-=7;
  /*  if (y<40){
      thingList.remove(this); //<<Breaks but not certain why 
    }; */
  };
  void display() {
    rect(x,y,4,10);
  };
}