class nivel{
  PImage i;
  float x;
  float y;
  
  nivel(String i_,float x_, float y_){
    i=loadImage(i_);
    x=x_;
    y=y_;
  }
  void hacer(){
    image(i,x,y);
  }
     
}
