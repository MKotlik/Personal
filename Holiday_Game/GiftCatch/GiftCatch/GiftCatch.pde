ArrayList<FallObject> fallObjList;
PFont mainFont;
int objCount;

void setup() {
  size(640, 480);
  background(255);
  fallObjList  = new ArrayList<FallObject>();
  mainFont  = loadFont("ArialMT-16.vlw");
  textFont(mainFont,16);
  objCount  = 0;
  //fallObjList.add(new FallObject());
  //fallObjList.get(0).move();
  //fallObjList.get(0).display();
}

void draw() {
  clear();
  background(255);
  for (int i = 0; i < fallObjList.size(); i++) {
    fallObjList.get(i).move();
    if (fallObjList.get(i).getY() > height) {
      fallObjList.remove(i);
      objCount--;
      i--;
    } else {
      fallObjList.get(i).display();
    }
  }
  text(frameRate, 20, 20);
  text(objCount, 20, 40);
}

void mousePressed() {
  fallObjList.add(new FallObject());
  objCount++;
}