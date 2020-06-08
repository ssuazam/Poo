color c[];//color 
int i;//itinerante
int x;
int s;
int r;
int n;
int b;
int o;
int menu;
int cre=1;
PImage fondo;
PImage controles;
int confi=0;
int time=0;
nivel con;
triam bug;
triag bag;
triag beg;
triap bueg;
triap tri;
cuadrado one;
rombo rom;
boton gan;
boton vic;
boton play;
boton creador;
boton salir;
boton control;
boton atras;
boton guardado;
boton crea;



void setup(){
  size(1000,1000);
  c = new color[7];
  n=0;
  play=new boton("play.png",500,287);
  gan=new boton("subir nivel.png",500,500);
  vic=new boton("victoria.png",500,500);
  control=new boton("controles.png",500,635);
  salir=new boton("salir.png",500,809);
  creador=new boton("creador.png",500,461);
  atras=new boton("atras.png",960,40);
  guardado=new boton("guardado.png",500,500);
  crea= new boton("crear.png",900,940);
  menu = 0;
  fondo=loadImage("fondo.png");
  controles=loadImage("controless.png");
  
  inicio();
}
void inicio() {
  x=-1;
  for (i=0; i<7; i++) {    
    c[0]=color((255), (128), (0)); 
    c[1]=color((106), (13), (173)); 
    c[2]=color((255), (0), (0)); 
    c[3]=color((0), (255), (0)); 
    c[4]=color((230), (128), (255)); 
    c[5]=color((255), (255), (0));
    c[6]=color((100), (128), (255));
  }
  b=0;
  bag = new triag(77,42,color(255,128,0),0);
  beg = new triag(115,79,color(106,13,173),2);
  bueg = new triap(58,79,color(255,0,0),6);
  tri = new triap(115,135,color(0,255,0),4);
  bug = new triam(21,135,color(230,128,255),1);  
  one = new cuadrado(77,117,color(255,255,0),2);
  rom = new rombo(21,60,color(100,128,255),4);
  
  
}
void draw(){
  background(fondo);
  noStroke();
  if(menu==0){
    play.crear();
    creador.crear();
    control.crear();
    salir.crear();
    
  }
  if(menu==3){
    background(controles);
    atras.crear();

  }
  
  
  
  if(menu==1){
    background(255);
    if(cre==0){
      con = new nivel(n+"conejo.png",250,250);
      con.hacer();
    }
    if(cre==1){
      crea.crear();
    }
    atras.crear();
    bag.dibujar();
    beg.dibujar();
    bueg.dibujar();
    tri.dibujar();
    bug.dibujar();   
    one.dibujar();
    rom.dibujar();
    if(b==1){
      if(n==3){
        vic.crear();
      }else{gan.crear();
      }
    }
    if(b==0){
      if(x==0){
        bag.move();
      }
      if(x==1){
        beg.move();
      }
      if(x==2){
        bueg.move();
      }
      if(x==3){
        tri.move();
      }
      if(x==4){
        bug.move();
      }
      if(x==5){
        one.move();
      }
      if(x==6){
        rom.move();
      }
      
    
      if(s==1){
        bag.mover();
        if (keyPressed & (r != 0)) {
          if (key == '.') {
            bag.rotarderecha();
            r =0;
          }
        }
        if (keyPressed & (r!= 0)) {
          if (key == ',') {
            bag.rotarizquierda();
            r =0;
          }
        }
      }
      if(s==2){
        beg.mover();
        if (keyPressed & (r != 0)) {
          if (key == '.') {
            beg.rotarderecha();
            r =0;
          }
        }
        if (keyPressed & (r!= 0)) {
          if (key == ',') {
            beg.rotarizquierda();
            r =0;
          }
        }
      }
      if(s==3){
        bueg.mover();
        if (keyPressed & (r != 0)) {
          if (key == '.') {
            bueg.rotarderecha();
            r =0;
          }
        }
        if (keyPressed & (r!= 0)) {
          if (key == ',') {
            bueg.rotarizquierda();
            r =0;
          }
        }
      }
      if(s==4){
        tri.mover();
        if (keyPressed & (r != 0)) {
          if (key == '.') {
            tri.rotarderecha();
            r =0;
          }
        }
        if (keyPressed & (r!= 0)) {
          if (key == ',') {
            tri.rotarizquierda();
            r =0;
          }
        }
      }
      if(s==5){
        bug.mover();
        if (keyPressed & (r != 0)) {
          if (key == '.') {
            bug.rotarderecha();
            r =0;
          }
        }
        if (keyPressed & (r!= 0)) {
          if (key == ',') {
            bug.rotarizquierda();
            r =0;
          }
        }
      }
      if(s==6){
        one.mover();
        if (keyPressed & (r != 0)) {
          if (key == '.') {
            one.rotarderecha();
            r =0;
          }
        }
        if (keyPressed & (r!= 0)) {
          if (key == ',') {
            one.rotarizquierda();
            r =0;
          }
        }
      }
      if(s==7){
        rom.mover();
        if (keyPressed & (r != 0)) {
          if (key == '.') {
            rom.rotarderecha();
            r =0;
          }
        }
        if (keyPressed & (r!= 0)) {
          if (key == ',') {
            rom.rotarizquierda();
            r =0;
          }
        }
      }
    }
  
  if(cre==0){
      color pink = color(255, 102, 204);
      loadPixels();
      int j= 0;
      for (int i = 0; i < (width*height)-width; i++) {
    
    
        if ( pixels[i] == color(0, 0, 0)) {
          pixels[i] = pink;
          j +=1;
          
        }
      }
    
      if (j<250) {
        print("ganaste");
        b=1;
      }
    }       
  }
  if(confi==1){    
    guardado.crear();      
    b=3;
  }
  

}
void mousePressed() {
  if ((mouseButton == LEFT)) {
    color mouseC = get(mouseX, mouseY);
    for (int z=0; z<7; z++) {
      if (c[z]== mouseC) {
        x = z;
      }
    }
  }
  
}
void mouseClicked(){
  if(mouseButton == RIGHT){
    one.rotar();
    bug.rotar();
    bag.rotar();
    bueg.rotar();
    tri.rotar();
    rom.rotar();
    beg.rotar();
       
  }
  if(mouseButton==LEFT){
    if((n!=3)&(b==1)){
      gan.presionar();
      if(gan.presionar()==true){        
        n+=1;
        inicio();
      }
    }
    if((n==3)&(b==1)){
      vic.presionar();
      if(vic.presionar()==true){
        menu=0;
        inicio();
        n=0;
      }
    }
    if(menu==0){
      play.presionar();
      if(play.presionar()==true){
        menu=1;
        cre=0;
      }
      salir.presionar();
      if(salir.presionar()==true){
        exit();
      }
      control.presionar();
      if(control.presionar()==true){
        menu=3;
      }
      creador.presionar();
      if(creador.presionar()==true){
        menu=1;
        cre=1;
      }
    }
    if(menu!=0){
      atras.presionar();
      if(atras.presionar()==true){
        menu=0;
        n=0;
        inicio();
        confi=0;
        
      }      
    }
    if(confi==1){
      guardado.presionar();
      if(guardado.presionar()==true){
        confi=0;
        b=0;
      }
    }
    if(cre==1){
      crea.presionar();
      if(crea.presionar()==true){
        bag.negro();
        beg.negro();
        bueg.negro();
        tri.negro();
        bug.negro();
        one.negro();
        rom.negro();
        bag.dibujar();
        beg.dibujar();
        bueg.dibujar();
        tri.dibujar();
        bug.dibujar();
        one.dibujar();
        rom.dibujar();
        crea.cubrir();        
        save(o+"nivel.png");
        bag.colo();
        beg.colo();
        bueg.colo();
        tri.colo();
        bug.colo();
        one.colo();
        rom.colo();
        o+=1;
        confi=1;     
        
      }
    }
  }
}
void mouseReleased(){
  x=-1;
  
}
void keyReleased() {
  if (key== '1') {
    s=1;
  }
  if (key== '2') {
    s=2;
  }
  if (key== '3') {
    s=3;
  }
  if (key== '4') {
    s=4;
  }
  if (key== '5') {
    s=5;
  }
  if (key== '6') {
    s=6;
  }
  if (key== '7') {
    s=7;
  }
  if (keyCode == ENTER) {
    if(confi!=0){
      confi=0;
      b=0;
    }
    if(b!=0){
      inicio();
      n+=1;
      
    }
    
    print(b);
    s=0;
  }
  if (key== ',') {
    r=-1;
   }
  if (key =='.') {
    r=-1;
  }
  if (key =='r'){
    if(menu!=0 & menu !=3){
      rom.especial();
    }
  }
  if(key=='c'){
    if(cre==1){
      bag.negro();
      beg.negro();
      bueg.negro();
      tri.negro();
      bug.negro();
      one.negro();
      rom.negro();
      bag.dibujar();
      beg.dibujar();
      bueg.dibujar();
      tri.dibujar();
      bug.dibujar();
      one.dibujar();
      rom.dibujar();
      crea.cubrir();
      save(o+"nivel.png");
      bag.colo();
      beg.colo();
      bueg.colo();
      tri.colo();
      bug.colo();
      one.colo();
      rom.colo();
      o+=1;
      confi=1;     
      
    }    
  }
  if(key=='z'){
    inicio();
  }
  if((keyCode==DELETE)&(menu!=0)){
    menu=0;
    inicio();
  }
  
}
