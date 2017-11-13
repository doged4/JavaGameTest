Player meplayer = new Player(550.0,550.0,0.0);
ArrayList<EnemyThing> thingList = new ArrayList<EnemyThing>();
ArrayList<EnemyThing> deleteGroup = new ArrayList<EnemyThing>();

ArrayList<Enemy> deleteEnemies = new ArrayList<Enemy>();
ArrayList<Enemy> enemylist = new ArrayList<Enemy>(); 

ThingCreated thingCreated = new ThingCreated(-50,-50);
final ArrayList<PImage> costumes = new ArrayList<PImage>();  
int score;
final float enemySpeed=1;
boolean hit;

void setup(){
  size(600,600);
  System.out.println("INIT");
  int score = 0;
  hit = false;
  for (int i = 1; i < 11; i++){
    costumes.add(loadImage("invader"+ i+"A.png"));
    costumes.add(loadImage("invader"+i+"B.png"));
  }
  for(int i = 0; i<5; i++){ 
   for(int j = 0; j<10; j++){
    enemylist.add(new Enemy( 0+(j*50), 40 + 40*i, costumes.get(10 - 2*i), costumes.get(11 - 2*i)));
   };
//   enemySpeed = 1;
   };
   
};
void draw(){
  background(0,0,0);

   for(Enemy nowEnemy : enemylist){
     nowEnemy.display();
     nowEnemy.update(/*enemySpeed + */ 1+ 10.0/ enemylist.size() );
     if(thingCreated.y> nowEnemy.y 
       && thingCreated.y< (nowEnemy.y + 60) 
       && thingCreated.x > nowEnemy.x 
       && thingCreated.x< (nowEnemy.x + 40)){
   
       deleteEnemies.add(nowEnemy);
       score+=1;
       thingCreated.y = -10;
       System.out.println("Collided");
   
       }
      }
   enemylist.removeAll(deleteEnemies);
   deleteEnemies.removeAll(deleteEnemies);

  thingCreated.display();
  thingCreated.update();

  for(EnemyThing thing : thingList){ //<-- could inherticance be used here?
    thing.display();
    thing.update();
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
       }
   }
   thingList.removeAll(deleteGroup);
   deleteGroup.removeAll(deleteGroup);

  if (!hit){
    meplayer.update();
    meplayer.display();
  } else{
   System.out.println("You are hit");
  }

  
   

}

int speed = 5;

void keyPressed(){
if (!hit){
  if ((key == 'a' || keyCode == LEFT) && meplayer.x>100){
    meplayer.xspeed = -speed;
  };
  
   if (key == 'w' || keyCode == UP){
    if(thingCreated.y < 0){
     thingCreated.x = meplayer.x + 8;
    thingCreated.y = meplayer.y;
    }
  };

  if ((key == 'd' || keyCode == RIGHT) && meplayer.x<480){
    meplayer.xspeed = speed;
  };
  if (key == 'm'/* || keyCode == DOWN*/ && thingCreated.y < 0){
    thingCreated.x = meplayer.x + 8;
    thingCreated.y = meplayer.y;
    
  }
}
  if (key == 'u'){
  hit = false;
  };
  if(key == '®'){
    int score = 0;
    hit = false;
  
    
     background(0,0,0);
     
     deleteGroup.removeAll(deleteGroup);
     enemylist.removeAll(enemylist);
     for(int i = 0; i<5; i++){ 
      for(int j = 0; j<10; j++){
      enemylist.add(new Enemy( 0+(j*50), 40 + 40*i, costumes.get(10 - 2*i), costumes.get(11 - 2*i)));
      };
   };
  }
};