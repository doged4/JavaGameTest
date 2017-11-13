public class EnemyThing extends ThingCreated{
  public EnemyThing(float _x,float _y){
    super(_x,_y);
  }
  void update(){
    //this.y +=6;
    this.y +=6;
  };

  void display(){
    rect(x,y,4,10); //<----SHOULD be inhereitted
    /*if ((this.y % 140) <70){
      image(thingCostume1,x,y,8,20);
      
    }else{
      image(thingCostume2,x,y,8,20);
    }*/
 //   System.out.println(this.y % 10);
  };
};