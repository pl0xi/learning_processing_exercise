class Controller {

  ArrayList<ArrayList<Integer>> objects = new ArrayList<ArrayList<Integer>>();

  Controller() {
  }

  private boolean checkForCollision(ArrayList object) {
    int objectType = (int) object.get(0);
    if (objectType == 1) {
      return (mouseX > (int) object.get(1) - float((int) object.get(3)/2) && mouseX < (int) object.get(1) + float((int) object.get(3)/2) && mouseY < (int) object.get(2) + float((int) object.get(4)/2) && mouseY > (int) object.get(2) - float((int) object.get(4)/2));
    } else if (objectType == 2) {
      return (dist(mouseX, mouseY, (int) object.get(1), (int) object.get(2)) < float((int) object.get(3)/2));
    } else {
      return (dist(mouseX, mouseY, (int) object.get(1), (int) object.get(2)) < 25);
    }
  }

  public void display() {
    for (int i = 0; i < objects.size(); i++) {
      ArrayList tmpObject = objects.get(i);
      createObjects(tmpObject);
    }
  }

  private void createObjects(ArrayList object) {
    switch((int) object.get(0)) {
    case 1:

      if (checkForCollision(object)) fill(random(255)); 
      else fill(255);
      rect((int) object.get(1), (int)object.get(2), (int) object.get(3), (int)object.get(4));
      break;
    case 2:
      checkForCollision(object);
      if (checkForCollision(object)) fill(random(255)); 
      else fill(255);
      circle((int) object.get(1), (int) object.get(2), (int) object.get(3));
      break;
    case 3: 
      checkForCollision(object);
      if (checkForCollision(object)) strokeWeight(10); 
      else strokeWeight(50);
      point((int) object.get(1), (int) object.get(2));
      strokeWeight(0);
      break;
    default:
      break;
    }
  }


  void action(char key_) {
    ArrayList<Integer> tmpFolder = new ArrayList<Integer>();
    rectMode(CENTER);
    switch(key_) {
    case '1':
      tmpFolder.add(1);
      tmpFolder.add(mouseX);
      tmpFolder.add(mouseY);
      tmpFolder.add(mouseY);
      tmpFolder.add(mouseX);
      objects.add(tmpFolder);
      break;
    case '2':
      tmpFolder.add(2);
      tmpFolder.add(mouseX);
      tmpFolder.add(mouseY);
      tmpFolder.add((mouseY+mouseX)/4);
      objects.add(tmpFolder);
      break;
    case '3':
      tmpFolder.add(3);
      tmpFolder.add(mouseX);
      tmpFolder.add(mouseY);
      objects.add(tmpFolder);
      break;
    default:
      break;
    }
  }
}
