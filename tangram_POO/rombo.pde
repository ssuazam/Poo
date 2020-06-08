class rombo extends figura{
  float v1;//vertices
  float v2;
  float v3;
  float v4;
  float v5;
  float v6;
  float v7;
  float v8;  
  rombo(int x_,int y_,color c_,int r_){
    super(x_,y_,c_,r_);
    v1=12.5;
    v2=37.5;
    v3=12.5;
    v4=-12.5;
    v5=-12.5;
    v6=-37.5;
    v7=-12.5;
    v8=12.5;
  }
  void dibujar(){
    pushMatrix();
    super.dibujar();
    beginShape();
    vertex(v1, v2);
    vertex(v3, v4);
    vertex(v5, v6);
    vertex(v7, v8);      
    endShape();
    popMatrix();
  }
  void especial(){
    v1=-v1;
    v3=-v3;    
    v5=-v5;
    v7=-v7;
  }
}  
