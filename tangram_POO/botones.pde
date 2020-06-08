class boton{
  PImage i;
  float x;
  float y;
  int s=0;
  boolean a=false;
  float x_;
  float y_;
  
  boton(String i_,float x_, float y_){
    i=loadImage(i_);
    x=(x_-(i.width/2));
    y=(y_-(i.height/2));
  }
  void crear(){
    image(i,x,y);
    s=1;
    if(x==100){
      print("que onda que pex");
    }
    
  }
  boolean presionar(){
    a=false;
    if(s==1){       
      if((mouseX>x)&(mouseX< x+i.width)&(mouseY>y)&(mouseY< y+i.height)){
        print("yes");
        a = true;
              }
    }
    return a;
  }
  void cubrir(){
    fill(255);
    rect(x,y,i.width,height);   
    
  } 
}
  
