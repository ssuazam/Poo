class figura{
  int x;
  int y;
  color c;
  int r;
  int s;
  color ct;
  
  figura(int x_,int y_,color c_,int r_){
    x=x_;
    y=y_;
    c=c_;
    r=r_;
    ct=c_;
  }
  void dibujar(){
    
    translate(x,y);
    fill(c);
    scale(1.5);
    rotate(r*radians(45));
  }
  void rotar(){
    color mouseC=get(mouseX,mouseY);
    if(mouseC==c){
      r+=1;
    }
  }
  void mover(){
    if (keyPressed & keyCode == UP) {
      y -= 1;
      print("154151451");
    }
    if (keyPressed & keyCode == DOWN) {
      y+= 1;
    }
    if (keyPressed & keyCode == LEFT) {
      x-= 1;
    }
    if (keyPressed & keyCode == RIGHT) {
      x += 1;
    }       
  }
  void rotarderecha(){
    r +=1;
    
   }
   void rotarizquierda(){
     r -=1;
   }
   void move(){
     x += mouseX-pmouseX;
     y += mouseY-pmouseY;
   }
   void negro(){
    c=0;
   }
   void colo(){
     c=ct;
   }
   
}
    
