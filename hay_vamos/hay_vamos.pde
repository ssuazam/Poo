color c[];//color  
int px[];//posicion x
int py[];//posicion y
int i;//itinerante
int r[];//rotacion
int s;//selector
int x;//bloqueo
int q;//boton
PImage img;//victoria
int t;// selector teclado
int rot=1;//rotacion teclado
PImage ini;//imagen inicio
PImage rest;//imagen reinicio
float v1;//vertices
float v2;
float v3;
float v4;
float v5;
float v6;
float v7;
float v8;

void setup() {
  size(500, 500);
  noStroke();
  c = new color[8];
  px= new int [8];
  py= new int [8];
  r= new int [8];
  img= loadImage("victoria.png");
  ini= loadImage("start.png");
  rest= loadImage("reset.png");

  inicio();
}
void inicio() {
  for (i=0; i<8; i++) {
    px[0]=int(287);
    px[1]=int(77);
    px[2]=int(115);
    px[3]=int(58);
    px[4]=int(115);
    px[5]=int(21);
    px[6]=int(77);
    px[7]=int(21);
    py[0]=int(252);
    py[1]=int(42);
    py[2]=int(79);
    py[3]=int(79);
    py[4]=int(135);
    py[5]=int(135);
    py[6]=int(117);
    py[7]=int(60);
    c[0]=color((255), (255), (255));
    c[1]=color((255), (128), (0)); 
    c[2]=color((45), (87), (44)); 
    c[3]=color((255), (0), (0)); 
    c[4]=color((0), (255), (0)); 
    c[5]=color((230), (128), (255)); 
    c[6]=color((255), (255), (0));
    c[7]=color((160), (128), (255));
    r[0]=int(4);
    r[1]=int(0);
    r[2]=int(2);
    r[3]=int(6);
    r[4]=int(4);
    r[5]=int(1);
    r[6]=int(2);
    r[7]=int(4);
  }
  s = -1;
  x =0;
  t=-1;
  q=0;
  v1=12.5;
  v2=37.5;
  v3=12.5;
  v4=-12.5;
  v5=-12.5;
  v6=-37.5;
  v7=-12.5;
  v8=12.5;
  
}
void draw() {

  background(255);
  noStroke();
  for (i=0; i<8; i++) {
    pushMatrix();
    translate(px[i], py[i]);
    rotate(r[i]*radians(45));
    fill(c[i]);
    scale(1.5);
    switch(i) {
    case 0: // Nivel
      beginShape();
      vertex(-50, -25);
      vertex(0, 25);
      vertex(25, 0 );
      vertex(50, 25 );
      vertex(100, -25 );
      vertex(25, -100 );
      endShape();
      break;  
    case 1:
    case 2: // Triangulos grandes
      beginShape(TRIANGLES);
      vertex(-50, -25);
      vertex(0, 25);
      vertex(50, -25);
      endShape();
      break;
    case 3:
    case 4: // Triangulos pequeños
      beginShape(TRIANGLES);
      vertex(-25, -12.5);
      vertex(0, 12.5);
      vertex(25, -12.5);
      endShape();
      break;
    case 5: // Triangulo mediano
      beginShape(TRIANGLES);
      vertex(-35.36, -17.68);
      vertex(0, 17.68);
      vertex(35.36, -17.68);
      endShape();
      break;
    case 6: // cuadrado
      beginShape();
      vertex(0, 25);
      vertex(25, 0);
      vertex(0, -25);
      vertex(-25, 0);      
      endShape();
      break;
    case 7: // rombo
      beginShape();
      vertex(v1, v2);
      vertex(v3, v4);
      vertex(v5, v6);
      vertex(v7, v8);      
      endShape();
      break;
    }    
    popMatrix();
  }
  if (mousePressed & (s !=-1)&(x==0)) {
    px[s] += mouseX-pmouseX;
    py[s] += mouseY-pmouseY;
  }
  if ((t != -1)&(x==0)) {
    if (keyPressed & keyCode == UP) {
      py[t] -= 1;
    }
    if (keyPressed & keyCode == DOWN) {
      py[t] += 1;
    }
    if (keyPressed & keyCode == LEFT) {
      px[t] -= 1;
    }
    if (keyPressed & keyCode == RIGHT) {
      px[t] += 1;
    }
    if (keyPressed & (rot != 0)) {
      if (key == '.') {
        r[t] += 1;
        rot =0;
      }
    }
    if (keyPressed & (rot != 0)) {
      if (key == ',') {
        r[t] -= 1;
        rot =0;
      }
    }
  }
  if ((x==0)&(q==0)) {
    image(ini, 410, 0);
  }
  if(q==1){
    image(rest, 410,460);
  }

  color pink = color(255, 102, 204);
  loadPixels();
  int j= 0;
  for (int i = 0; i < (width*height)-width; i++) {


    if ( pixels[i] == color(0, 0, 0)) {
      pixels[i] = pink;
      j +=1;
    }
  }
  if ((j<250)& (c[0]==color(0, 0, 0))) {

    image(img, 141.5, 197);
    x = 1;
  }

  if (x==1) {
    s = -1;
  }
}
void mousePressed() {
  if ((mouseButton == LEFT)&(x==0)) {
    color mouseC = get(mouseX, mouseY);
    for (int z=1; z<8; z++) {
      if (c[z]== mouseC) {
        s = z;
      }
    }
  }
}
void mouseReleased() {
  s= -1;
  
}
void mouseClicked() {
  if ((mouseButton == RIGHT)& (x==0)) {
    color mouseC = get(mouseX, mouseY);
    for (int z=1; z<8; z++) {
      if (c[z] == mouseC) {
        r[z] +=1;
      }
    }
  }
  if ((mouseButton == LEFT)&(x==1)) {
    if ((232<mouseX)&(mouseX < 274)&(266<mouseY)&(mouseY < 294)) {
      inicio();
    }



    print(mouseX);
    print("//");
    print(mouseY);
    print("//");
  }
  if ((mouseButton == LEFT)&(q==1)) {
    if ((410<mouseX)&(mouseX < 497)&(460<mouseY)&(mouseY < 492)) {
      inicio();
      print("hola");
      
    }
  }
  if ((mouseButton == LEFT)&(q==0)) {
    if ((410<mouseX)&(mouseX < 497)&(0<mouseY)&(mouseY < 32)) {
      print("ey");
      c[0]=color(0, 0, 0);
      q=1;
    }
  }
}

void keyReleased() {
  if (key== '1') {
    t=1;
  }
  if (key== '2') {
    t=2;
  }
  if (key== '3') {
    t=3;
  }
  if (key== '4') {
    t=4;
  }
  if (key== '5') {
    t=5;
  }
  if (key== '6') {
    t=6;
  }
  if (key== '7') {
    t=7;
  }
  if (keyCode == ENTER) {
    t=-1;
  }
  if (key== ',') {
    rot=1;
  }
  if (key =='.') {
    rot=1;
  }
  if ((key =='r')& (x==0)) {
    v1=-v1;
    v3=-v3;
    v5=-v5;
    v7=-v7;
  }
  if (key =='s') {
    c[0]=color(0, 0, 0);
    q=1;
  }
  if (key=='z') {
    inicio();
  }
}
