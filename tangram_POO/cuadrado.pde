class cuadrado extends figura{
  cuadrado(int x_,int y_,color c_,int r_){
    super(x_,y_,c_,r_);
  }
  void dibujar(){
    pushMatrix();
    super.dibujar();
    beginShape();
    vertex(0, 25);
    vertex(25, 0);
    vertex(0, -25);
    vertex(-25, 0);      
    endShape();
    popMatrix();
  }
}
