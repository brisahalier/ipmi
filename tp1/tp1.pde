PImage miImagen;

void setup() {
  size(800, 400);
  miImagen = loadImage("escultura.jpg");
}

void draw() {
  background(0);
  image(miImagen, 0, 0, 400, 400);

  //base cubo-frente
  fill(180);
  noStroke();
  rect(555, 240, 115, 140);

  //cuello
  fill(195);
  noStroke();
  quad(600, 240, 625, 240, 655, 205, 575, 205);
  rect(575, 155, 80, 50);

  //orejas
  fill(200);
  ellipse(560, 115, 15, 35);
  ellipse(670, 115, 15, 35);
  //detallles
  fill(150);
  ellipse(560, 115, 5, 15);
  ellipse(670, 115, 5, 15);

  //cabeza parte superior
  fill(220);
  noStroke();
  beginShape();
  vertex(565, 115);
  bezierVertex(545, 35, 580, 10, 615, 10);
  bezierVertex(650, 10, 685, 35, 665, 115);
  vertex(665, 115);
  endShape(CLOSE);

  // cabeza
  fill(220);
  noStroke();
  beginShape();
  vertex(615, 55);
  bezierVertex(650, 55, 670, 70, 670, 110);
  bezierVertex(670, 160, 640, 205, 615, 205);
  bezierVertex(590, 205, 560, 160, 560, 110);
  bezierVertex(560, 70, 580, 55, 615, 55);
  endShape(CLOSE);


  //cinta frontal
  fill(200);
  noStroke();
  beginShape();
  vertex(565, 50);
  bezierVertex(565, 25, 665, 25, 665, 50);
  vertex(670, 75);
  bezierVertex(670, 50, 560, 50, 560, 75);
  endShape();

  //linea de sombra
  stroke(150);
  strokeWeight(3);
  noFill();
  beginShape();
  vertex(560, 75);
  bezierVertex(560, 50, 670, 50, 670, 75);
  endShape();

  //rulos
  fill(220);
  stroke(180);
  strokeWeight(2);
  //lado izq
  ellipse(570, 65, 5, 5);
  ellipse(565, 70, 10, 10);
  ellipse(560, 75, 10, 10);
  ellipse(555, 85, 10, 10);
  ellipse(555, 85, 15, 15);
  ellipse(555, 90, 10, 10);
  ellipse(555, 100, 10, 10);
  //lado der
  ellipse(660, 65, 5, 5);
  ellipse(665, 70, 10, 10);
  ellipse(670, 80, 10, 10);
  ellipse(675, 85, 10, 10);
  ellipse(675, 90, 10, 10);
  ellipse(675, 95, 15, 15);
  ellipse(675, 100, 10, 10);

  //nariz
  stroke(160);
  strokeWeight(2);
  noFill();
  line(610, 95, 610, 145);
  line(620, 95, 620, 145);
  line(610, 145, 620, 145);

  //cejas
  //izq
  beginShape();
  vertex(610, 95);
  bezierVertex(590, 80, 575, 80, 565, 90);
  endShape();

  //der
  beginShape();
  vertex(620, 95);
  bezierVertex(640, 80, 655, 80, 665, 90);
  endShape();

  //ojos(cuenca
  stroke(150);
  noFill();
  //izq
  beginShape();
  vertex(570, 95);
  bezierVertex(575, 90, 585, 90, 595, 95);
  endShape();

  //der
  beginShape();
  vertex(630, 95);
  bezierVertex(640, 90, 650, 90, 660, 95);
  endShape();

  //contorno de ojos
  stroke(110);
  fill(200);
  //izq
  ellipse(585, 105, 25, 10);

  //der
  fill(200);
  ellipse(645, 105, 25, 10);

  //boca
  fill(195);
  noStroke();
  arc(615, 165, 35, 15, PI, TWO_PI);
  arc(615, 165, 35, 20, 0, PI);
  stroke(140);
  strokeWeight(1);
  line(600, 165, 630, 165);
}
