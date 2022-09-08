color red = color(255, 0, 0);
color yellow = color(255, 240, 0);
color green = color(0, 255, 0);
color grey = color(150);
color backgroundColor = color(150, 150, 175);
int timer = 0, state = 0;

void setup() {
  size(600, 600);
  background(backgroundColor);
  rectMode(CENTER);
  fill(30);
  rect(width/2, height/2, 125, 275);
  ellipseMode(CENTER);
}

void draw() {
  timer++;
  println(timer); // Checks in the console what the timer is

  // We have chosen to use 'if' statements rather than 'switch-case',
  // because if for some reason there is an error and for instance it skips
  // one of the cases, it will not have the correct lights in the trafficlight
  
  // We also made an integer variable named 'state' to counter the above issue,
  // because we only need to draw the lights once in the draw loop, because there
  // is no reason to redraw the same light.

  if (timer < 200) {
    if (state != 0) return;
    drawLight(red, -85);
    drawLight(grey, 0);
    drawLight(grey, 85);
    state = 1;
  } else if (timer < 300) {
    if (state != 1) return;
    drawLight(yellow, 0);
    state = 2;
  } else if (timer < 500) {
    if (state != 2) return;
    drawLight(grey, -85);
    drawLight(grey, 0);
    drawLight(green, 85);
    state = 3;
  } else if (timer < 575) {
    if (state != 3) return;
    drawLight(yellow, 0);
    drawLight(grey, 85);
    state = 4;
  } else {
    timer = 0;
    state = 0;
  }
}

void drawLight(color c, float heightDifference){
  fill(c);
  ellipse(width/2, (height/2) + heightDifference, 75, 75);
}
