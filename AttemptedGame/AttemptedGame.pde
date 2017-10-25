Player meplayer = new Player(550.0,550.0,0.0,0.0);
//ThingCreated thing = new ThingCreated(meplayer.x, meplayer.y);
ArrayList<EnemyThing> thingList = new ArrayList<EnemyThing>();
ArrayList<EnemyThing> deleteGroup = new ArrayList<EnemyThing>();

//ArrayList<ThingCreated> thingList = new ArrayList<ThingCreated>();
//ArrayList<ThingCreated> deleteGroup = new ArrayList<ThingCreated>();
ArrayList<Enemy> deleteEnemies = new ArrayList<Enemy>();
ArrayList<Enemy> enemylist = new ArrayList<Enemy>(); 
//Enemy currentEnemy, currentEnemy2, currentEnemy3, currentEnemy4;
ThingCreated thingCreated = new ThingCreated(-50,-50);
ArrayList<PImage> costumes = new ArrayList<PImage>();  
int score;
float enemySpeed;
boolean hit;

void setup(){
  size(600,600);
  System.out.println("INIT");
  int score = 0;
  hit = false;
  costumes.add(loadImage("invader.png"));
  costumes.add(loadImage("invader2.png"));
  costumes.add(loadImage("alienTemplate.png.gif"));

  //currentEnemy =  new Enemy(200,100);//random(1,500),random(1,500));
  //currentEnemy2 =  new Enemy(240,100);
  //currentEnemy3 =  new Enemy(280,100);
  //currentEnemy4 =  new Enemy(320,100);

   for(int i = 0; i<5; i++){ 
    for(int j = 0; j<10; j++){
      enemylist.add(new Enemy( 0+(j*50), 40 + 40*i,1));
    };
    enemySpeed = 1;
   };
   
};
void draw(){
  background(0,0,0);

// currentEnemy.display();
// currentEnemy.update();
// currentEnemy2.display();
// currentEnemy2.update();
 //currentEnemy3.display();
 //currentEnemy3.update();
 //currentEnemy4.display();
 //currentEnemy4.update();
   for(Enemy nowEnemy : enemylist){
     nowEnemy.display(costumes.get(int(nowEnemy.step/25 % 2)));
     nowEnemy.update(/*enemySpeed + */ 1+ 10.0/ enemylist.size() );
     if(thingCreated.y> nowEnemy.y 
       && thingCreated.y< (nowEnemy.y + 60) 
       && thingCreated.x> nowEnemy.x 
       && thingCreated.x< (nowEnemy.x + 40)){
   
       deleteEnemies.add(nowEnemy);
       score+=1;
       thingCreated.y = -10;
       System.out.println("Collided");
   
       }
       }
    for (Enemy toDelete : deleteEnemies) {
     enemylist.remove(toDelete);
     }
   deleteEnemies.removeAll(deleteEnemies);

  thingCreated.display();
  thingCreated.update();

  for(EnemyThing thing : thingList){ //<-- could inherticance be used here?
    thing.display();
    thing.update();
    //System.out.println(thing);
    if (thing.y > 600){ 
      deleteGroup.add(thing);
    }
    if(thing.y> meplayer.y 
       && thing.y< (meplayer.y + 20) 
       && thing.x> meplayer.x 
       && thing.x< (meplayer.x + 20)
       && !hit){
   
       hit = true;
       System.out.println("YOU HAVE BEEN HIT");
       //score+=1;
       //thingCreated.y = -10;
   
       }
   }
   for (EnemyThing toDelete : deleteGroup) {
    thingList.remove(toDelete);
   }
   deleteGroup.removeAll(deleteGroup);

//  for(ThingCreated thing : thingList){
//    thing.display();
//    thing.update();
//     if (thing.y < -20){
//       deleteGroup.add(thing);
//      }}
//    for (ThingCreated toDelete : deleteGroup) {
  //    thingList.remove(toDelete);
    //}
   // deleteGroup.removeAll(deleteGroup);

 // System.out.println( str(meplayer.xspeed) +", " + str(meplayer.yspeed) );\

  if (!hit){
    meplayer.update();
    meplayer.display();
  } else{
   System.out.println("You are hit");
  }
  meplayer.yspeed = meplayer.yspeed * .95;
  meplayer.xspeed = meplayer.xspeed * .95;
  if (sqrt(meplayer.yspeed * meplayer.yspeed) < .1){
    meplayer.yspeed = 0;
  }
  if (sqrt(meplayer.xspeed * meplayer.xspeed) < .1){
    meplayer.xspeed = 0;
  }
  
   

}

int speed = 5;

void keyPressed(){
if (!hit){
  if ((key == 'a' || keyCode == LEFT) && meplayer.x>100){
    meplayer.xspeed = -speed;
    System.out.println("A Pressed");
  };
  
   if (key == 'w' || keyCode == UP){
    if(thingCreated.y < 0){
     thingCreated.x = meplayer.x + 8;
    thingCreated.y = meplayer.y;
    }
    //meplayer.yspeed = -speed;
    //System.out.println("W Pressed");
  };
  /*
  if (key == 's' || keyCode == DOWN){
    meplayer.yspeed = speed;
    System.out.println("S pressed");
  };*/
  if ((key == 'd' || keyCode == RIGHT) && meplayer.x<480){
    System.out.println("D Pressed");
    meplayer.xspeed = speed;
  };
  if (key == 'm'/* || keyCode == DOWN*/ && thingCreated.y < 0){
    //thingList.add(new ThingCreated(meplayer.x + 8, meplayer.y));
    thingCreated.x = meplayer.x + 8;
    thingCreated.y = meplayer.y;
    
  }
}
  if (key == 'u'){
  hit = false;
  };
  if(key == '®'){
    System.out.println("INITA");
    int score = 0;
    hit = false;
  
    
     background(0,0,0);
     
     deleteGroup.removeAll(deleteGroup);
     enemylist.removeAll(enemylist);
     for(int i = 0; i<5; i++){ 
      for(int j = 0; j<9; j++){
        enemylist.add(new Enemy( 0+(j*50), 100 + 40*i, 1));
      };
      enemySpeed = 1;
   };
  }
};