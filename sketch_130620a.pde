int frameLengh = 10;
PImage[] sprite = new PImage[frameLengh];

void setup(){
  size(130, 110);
  for(int i = 0; i < frameLengh; i++){
    sprite[i] = loadImage("imgs/" + i + ".png");
  }
  frameRate(frameLengh);
}
void draw(){
  animation(frameLengh);
}

int count = 0;
void animation(int countMax){
  if(count < countMax - 1){
    count += 1;
  }else{
    count = 0;
  }
  println(count);
  image(sprite[count], 0, 0);
}
