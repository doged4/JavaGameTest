public class EnemyThing extends ThingCreated{
  public EnemyThing(float _x,float _y){
    super(_x,_y);
  }
  private void update(){
  y +=6;
  };

  private void display(){
      rect(x,y,4,10); //<----SHOULD be inhereitted

  };
}