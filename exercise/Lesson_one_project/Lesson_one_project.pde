void setup() {
    size(800, 600);
}

void draw() {
    background(255);
    rectMode(CENTER);
    fill(constrain(mouseX, 0, 255), constrain(mouseX+mouseY, 0, 255), constrain(mouseY, 0, 255));
    rect(mouseX, mouseY, mouseX, mouseY);
    
}
