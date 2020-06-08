class triag extends figura{
  triag(int x_,int y_,color c_,int r_){
    super(x_,y_,c_,r_);
  }
  void dibujar(){
    pushMatrix();
    super.dibujar();
    beginShape(TRIANGLES);
    vertex(-50,-25);
    vertex(0,25);
    vertex(50,-25);
    endShape();
    popMatrix();
  }
}
