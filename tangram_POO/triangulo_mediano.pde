class triam extends figura{
  triam(int x_,int y_,color c_,int r_){
    super(x_,y_,c_,r_);
  }
  void dibujar(){
    pushMatrix();
    super.dibujar();
    beginShape(TRIANGLES);
    vertex(-35.36, -17.68);
    vertex(0, 17.68);
    vertex(35.36, -17.68);
    endShape();
    popMatrix();
  }
}
    
