PImage fondo;

void setup() {
  size(800,400);
  fondo = loadImage("pinguino.PNG");
}

void draw() {
  background(161,222,240);
  image(fondo, 0, 0, 400, 400);
  noStroke() ;
  fill(178,178,190) ;
  rect(400, 240, 400, 260) ;
  strokeWeight(3);
  stroke(0);
  fill(255);
  ellipse(552,246,20,70);
  noStroke();
  fill(255);
  ellipse(600,220,100,270);
  fill(0);
  quad(532,84,611,74,630,114,575,103);
  ellipse(597,82,35,25);
  fill(178,178,190);
  ellipse(579,82,9,9);
  fill(247,149,19);
  triangle(532,84,568,89,545,89);
  fill(255);
  ellipse(613,102,20,25);
  fill(0);
  ellipse(642,233,20,85);
  quad(651,216,641,125,624,102,641,193);
  fill(255);
  quad(575,338,625,338,625,354,575,354);
  fill(0);
  quad(575,354,592,354,597,360,570,360);
  quad(605,354,625,354,630,360,600,360);
  println(mouseX);
   println(mouseY);
}
