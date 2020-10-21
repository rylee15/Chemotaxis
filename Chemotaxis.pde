class Bubble{
  int myX;
  float myY;
  float mySpeed;
  int mySize;
  int myColor;
  
  Bubble(){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*380)-20;
    mySize = (int)(Math.random()*10)+60;
    mySpeed = mySize/100.0;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),255);
  }
  
  void rise(){
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY - mySpeed;
    if (myY < 0){
      myY = (int)(Math.random()*20)+380;
    }
  }
  
  void show(){
    noStroke();
    fill(myColor,90);
    ellipse(myX,myY,40,mySize);
  }
}

//Bubble pop;
Bubble [] pop;
void setup(){
  size(400,400);
  //pop = new Bubble();
  pop = new Bubble[99];
  for (int i =0; i < pop.length; i++){
    pop[i] = new Bubble();
  }
}
void draw(){
  background(135,206,235);
  for(int i = 0; i < pop.length; i++)
  {
    //pop.rise();
    //pop.show();
    pop[i].rise();
    pop[i].show();
  }
}
