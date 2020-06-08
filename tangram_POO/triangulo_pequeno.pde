class triap extends figura{
  triap(int x_,int y_,color c_,int r_){
    super(x_,y_,c_,r_);
  }
  void dibujar(){
    pushMatrix();
    super.dibujar();
    beginShape(TRIANGLES);
    vertex(-25, -12.5);
    vertex(0, 12.5);
    vertex(25, -12.5);
    endShape();
    popMatrix();
  }
}
