class monitosfeos{
 float x,y;
 
 monitosfeos(){
   x = 0;
   y = 0;
 }
  monitosfeos(float x_, float y_){ 
    this.x=x_;
    this.y=y_;
  }
   
}    
  
ventanas win1,win2,win3,win4;
cuerpo uno;
cuerpo1 dos;
cuerpo2 tres;
cuerpo3 cuatro;
cuerpo4 cinco;

import ddf.minim.*;
//IMPORTANTE: Libreria Minim utilizada por fallas con la libreria Sound

Minim cancion1, cancion2, cancion3, sonido;
AudioPlayer one,two,three,ouch;

int sel, pantallas, pena;
int select1, select2, turn;
int  vida1, vida2, turno;
PImage mono, simi, kirby, cat, cut, pelea, inicio, fin;
PFont f, k;



     
      void setup(){
    
      background(220);
      size(1200,740);
      f=loadFont("Fipps-Regular-40.vlw");
      k=loadFont("InkFree-80.vlw");
      mono=loadImage("mono.png");
      simi=loadImage("simi.png");
      kirby=loadImage("kirby.png");
      cat=loadImage("cat.PNG"); 
      pelea=loadImage("pelea.jpg");
      cut=loadImage("cut.png");
      inicio=loadImage("inicio.jpg");
      fin=loadImage("final.jpg");
      
      cancion1 = new Minim(this);
      one=cancion1.loadFile("uno.mp3");
      cancion2 = new Minim(this);
      two=cancion2.loadFile("2.mp3");
      cancion3 = new Minim(this);
      three=cancion3.loadFile("3.mp3");
      sonido = new Minim(this);
      ouch=sonido.loadFile("Ouch.mp3");

      uno = new cuerpo(1050,1450);
      dos = new cuerpo1(17950,6120);
      tres= new cuerpo2(31320,6375);
      cuatro= new cuerpo3(819,1250);
      cinco= new cuerpo4(21280,13870);
      
      win1 = new ventanas(10,10,width-10,height-10);
      win2 = new ventanas(10,10,width-10,height-10);
      win3 = new ventanas(10,10,width-10,height-10);
      win4 = new ventanas(10,10,width-10,height-10);
      pena = 0;
      sel = 1;
      
      select1 = 0;
      select2 = 0;
      turn = 0;
      vida1=100;
      vida2=100;
      turno=0;
     
    }
    
void draw(){
 
 switch(pena){
  case 0: ventana1(); break;
  case 1: ventana2(); break;
  case 2: ventana3(); break;
  case 3: ventana4(); break;
 }
 //println(select1,"\t",select2,"\t",turn, "\t", turno,"\n");
}

void keyPressed(){
 switch(key){
  case '1': pena = 0; break;
  case ' ' : pena = 1; break;
  case '3': pena = 2; break;
  case '4': pena = 3; break;
 }
 
 switch(key){
  case'd':sel=sel+1; break;
  case'a':sel=sel-1; break;
 }
 
 if(sel<=0){
  sel=5; 
 }
 if(sel>=6){
  sel=1; 
 }
 
 if (key == ENTER){
   switch(turn){
    case 0: turn = 1; break;
    case 1: turn = 2; break;
   }
 }
 
 if(key == 'p' || key== 'l'){
 switch (turno){
 case 0: turno = 1; break;
 case 1: turno = 2; break;
 case 2: turno = 3; break;
 }
 }
 if (turno == 3){
 turno=1;  
 }
 
  if (turno == 1){
     if (key=='p'){
    vida1-=random(10)+2;
    ouch.rewind();
    ouch.pause();
    ouch.play();
     }
  }
  
   if (turno == 2){
     if (key=='p'){
    vida2-=random(10)+2;
     ouch.rewind();
    ouch.pause();
    ouch.play();
     }
  }
  
  if (turno == 1){
     if (key=='l'){
    vida1-=random(5)+random(15);
     ouch.rewind();
    ouch.pause();
    ouch.play();
     }
  }
  
   if (turno == 2){
     if (key=='l'){
    vida2-=random(15)+random(5);
     ouch.rewind();
    ouch.pause();
    ouch.play();
     }
  }
}

class ventanas{
 float x1,y1,x2,y2;
 ventanas(float x1_,float y1_,float x2_,float y2_){
  x1 = x1_;
  y1 = y1_;
  x2 = x2_;
  y2 = y2_;
 }
 void fondo(color fondo,String title){
  fill(fondo);
  strokeWeight(2);
  stroke(240);
  rectMode(CORNERS);
  rect(x1,y1,x2,y2,10);
  fill(#F5CBDD);
  textAlign(CENTER,TOP);
  textFont(f,30);
  text(title,width/2,36);
  fill(228);
 }
 
     void rectangulo(float a, float b){
       noFill();
       stroke(235);
       strokeWeight(4);
       rectMode(CENTER);
       rect(a,b,200,200,5);
     } 
     
}

void ventana1(){
 
 win1.fondo(#F5CBDD," ");
  three.pause();
  two.pause();
 one.play();
 pushMatrix();
 fill(#AD6F34);
 pushMatrix();
 scale(0.82);
 image(inicio,-80,2);
 popMatrix();
 textFont(k);
 pushMatrix();
 frameRate(4);
 strokeWeight(6);
 fill(173,random(130),50);
 text("LAST SLICE OF PIZZA",600,140);
 popMatrix();
 fill(#D12828);
 textSize(30);
 text("Puchale ESPACIO para empezar",600,290);
 popMatrix();
}


void ventana2(){
 win2.fondo(135,"Selecciona a tu personaje con la tecla ENTER"); 

  uno.display();
  dos.display();
  tres.display();
  cuatro.display();
  cinco.display();
  
  switch(sel){
  case 1: win2.rectangulo(180,280); break;
  case 2: win2.rectangulo(600,280); break;
  case 3: win2.rectangulo(1040,280); break;
  case 4: win2.rectangulo(400,580); break;
  case 5: win2.rectangulo(800,580); break;
 }
 
if (key == ENTER && turn == 1){
  switch(sel){
   case 1: select1 = 0; break;
   case 2: select1 = 1; break;
   case 3: select1 = 2; break;
   case 4: select1 = 3; break;
   case 5: select1 = 4; break;
  } 
 }
 if (key == ENTER && turn == 2){
  switch(sel){
   case 1: select2 = 0; break;
   case 2: select2 = 1; break;
   case 3: select2 = 2; break;
   case 4: select2 = 3; break;
   case 5: select2 = 4; break;
  }
 }
 if(turn==0){
  text("Selección de jugador 1",600,100); 
 }
 if(turn==1){
  text("Selección de jugador 2",600,100); 
 }
 
 if (turn == 2){
 ventana3();
  
  one.pause();
  two.play();
 }
}

void ventana3(){
 //win3.fondo(255,"Duelo a muerte");
 background(255);
 pushMatrix();
 scale(1);
 image(pelea,-25,32);
 popMatrix();
 pushMatrix();
 fill(20);
 text("Pucha la tecla 'P' para dar un golpe",600,30);
 text("Pucha la tecla 'L' para dar una patadita",600,80);
 pushMatrix();
 textSize(15);
 text("Las pataditas tienen posibilidad de ser muy debiles o muy fuertes",600,150);
 popMatrix();
 popMatrix();

 switch(select1){
 case 0: pushMatrix(); translate(0,300); uno.display(); popMatrix(); break;
 case 1: pushMatrix(); translate(-420,300); dos.display(); popMatrix(); break;
 case 2: pushMatrix(); translate(-840,300); tres.display(); popMatrix(); break;
 case 3: pushMatrix(); translate(-230,0); cuatro.display(); popMatrix(); break;
 case 4: pushMatrix(); translate(-630,0); cinco.display(); popMatrix(); break;
 }

 switch(select2){
 case 0: pushMatrix(); translate(840,300); uno.display(); popMatrix(); break;
 case 1: pushMatrix(); translate(420,300); dos.display(); popMatrix(); break;
 case 2: pushMatrix(); translate(0,300); tres.display(); popMatrix(); break;
 case 3: pushMatrix(); translate(630,0); cuatro.display(); popMatrix(); break;
 case 4: pushMatrix(); translate(230,0); cinco.display(); popMatrix(); break;
 }
 
  pushMatrix();
   fill(255);
  strokeWeight(4);
  noFill();
  rectMode(CORNER);
  rect(118,427,104,20);
  rect(968,427,104,20);
  fill(244,247,100);
  noStroke();
  rect(120,430,vida1,15);
  rect(970,430,vida2,15);
  popMatrix();
  if (vida1 <=0 || vida2 <=0){
   
   ventana4();
   two.rewind();
   two.pause();
  }
}

void ventana4(){
 win4.fondo(#F5B5DA,"Game Over");
 pushMatrix();
 scale(0.5);
 image(fin,750,50);
 popMatrix();
fill(0);
 if(vida2 <=0){
   textSize(40);
   text("Ganó el jugador 1",600,400);
   

   three.play();
 }
 if(vida1 <=0){
   textSize(40);
   text("Ganó el jugador 2",600,400);
   
 
   three.play();
 }
 textSize(20);
 text("Hay que ir por unas caguamas",600,500);
 text("O presiona ENTER para jugar de nuevo",600,600);
 
 
 if (key == ENTER){
   three.rewind();
  
   one.rewind();
   
   two.rewind();

   
   turn=0;
   turno=0;
   sel = 1;
   select1 = 0;
   select2 = 0;
   vida1=100;
   vida2=100;
   pena=0;
 } 
}