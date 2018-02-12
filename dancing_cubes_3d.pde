import peasy.*;



PeasyCam camera;

float t=0;
float c;
void setup() {
  size(600,600,P3D);
  camera = new PeasyCam(this, 300, 300, -300, 400);
  camera.setMinimumDistance(500);
  camera.setMaximumDistance(1000);
}

void draw() {
  background(0);
  t += .1;
  for(int i=0; i<20; i++) {
    for(int j=0; j<20; j++) {
      pushMatrix();
      translate(i*20,j*20,(i-9.5)*(j-9.5)*sin(t));
      
      box(20);
      popMatrix();
    }
  }
}

