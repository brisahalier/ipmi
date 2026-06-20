// https://youtu.be/Kt3dhWtudto
PImage imagenReferencia;
color colorFondo = color(45, 185, 115);
int modoCirculos = 3;
boolean reiniciado = true;

void setup() {
  size(800, 400);
  imagenReferencia = loadImage("33.jpeg");
}

void draw()
{
  background(0);
  float centroX = 600;
  float centroY = 200;
  noStroke();
  if (pmouseX != mouseX || pmouseY != mouseY) {
    reiniciado = false;
  }
    int ancho = 40; 
  for (int x = 400; x < 800; x += ancho) {
    for (int y = 0; y < 400; y += ancho) {
      fill(colorFondo);
      rect(x, y, ancho, ancho);
    }
  }
  dibujarAnillo(centroX, centroY, 5, 5, 5, 10);
  dibujarAnillo(centroX, centroY, 10, 5, 10, 35);
  dibujarAnillo(centroX, centroY, 15, 5, 15, 90);
  dibujarAnillo(centroX, centroY, 20, 5, 15, 30);
  dibujarAnillo(centroX, centroY, 25, 5, 15, 90);
  dibujarAnillo(centroX, centroY, 30, 10, 15, 30);
  dibujarAnillo(centroX, centroY, 40, 10, 15, 60);
  dibujarAnillo(centroX, centroY, 55, 15, 15, 90);
   dibujarAnillo(centroX, centroY, 70, 20, 15, 30);
  dibujarAnillo(centroX, centroY, 100, 30, 15, 90);
  dibujarAnillo(centroX, centroY, 133, 40, 15, 30);
  dibujarAnillo(centroX, centroY, 180, 50, 15, 90);
  dibujarAnillo(centroX,centroY, 240, 70, 15, 30);
 image(imagenReferencia, 0, 0, 400, 400);
  stroke(255, 50);
  line(400, 0, 400, height);
}
void dibujarAnillo(float cx, float cy, float radio, float tam, int cant, float rot) {
  noStroke();
  for (int i = 0; i < cant; i++) {
    float angulo = radians(i * (360.0 / cant) + rot);
    float x = cx + cos(angulo) * radio;
    float y = cy + sin(angulo) * radio;
    float factorEfecto = obtenerModificador(x, y);
//posicion
    pushMatrix();
    translate(x, y);
    rotate(angulo);

    float tamFinal = tam * factorEfecto;
        fill(255);
    ellipse(0, 0, tamFinal, tamFinal);
    fill(255);
    dibujarSemicirculoAbajo(tamFinal);
    fill(0);
    dibujarSemicirculoArriba(tamFinal);
    if (modoCirculos == 3) {
      fill(103, 11, 180);
    } 
    else if (modoCirculos == 1) {
      if (i % 2 == 0) {
        fill(103, 11, 180);
      } else {
        fill(45, 185, 115);
      }
    } 
    else if (modoCirculos == 2) {
      if (i % 2 == 0) {
        fill(45, 185, 115);
      } else {
        fill(103, 11, 180);
      }
    }
    
    ellipse(0, 0, tamFinal * 0.9, tamFinal * 0.9);

    popMatrix();
  }
}
float obtenerModificador(float zonaX, float zonaY) {
  if (reiniciado) {
    return 1.0;
  }
  float distancia = dist(mouseX, mouseY, zonaX, zonaY);
  if (distancia < 120) {
    return map(distancia, 0, 120, 2.2, 1.0);
  } else {
    return 1.0; 
  }
}void mousePressed(){
  if (mouseX > 400) {
    if (modoCirculos == 3 || modoCirculos == 2) {
      modoCirculos = 1; 
    } else if (modoCirculos == 1) {
      modoCirculos = 2; 
    }
  }
}
void keyPressed() {
  if (key == 'f' || key == 'F') {
    if (colorFondo == color(45, 185, 115)) {
      colorFondo = color(103, 11, 180); 
    } else {
      colorFondo = color(45, 185, 115); 
    }
  }
  
  if (key == 'r' || key == 'R') {
    modoCirculos = 3; 
    reiniciado = true; 
    
    float variacionVerde = random(-1, 1);
    colorFondo = color(45 + variacionVerde, 185, 115);
  }
}

void dibujarSemicirculoAbajo(float tam) {
  float radioChico = tam / 2.0;
  beginShape();
  vertex(-radioChico, 0);
  for (float grados = 0; grados <= 180; grados += 5) {
    float rad = radians(grados);
    vertex(cos(rad) * radioChico, sin(rad) * radioChico);
  }
  vertex(radioChico, 0);
  endShape(CLOSE);
}

void dibujarSemicirculoArriba(float tam) {
  float radioChico = tam / 2.0;
  beginShape();
  vertex(radioChico, 0);
  for (float grados = 180; grados <= 360; grados += 5) {
    float rad = radians(grados);
    vertex(cos(rad) * radioChico, sin(rad) * radioChico);
  }
  vertex(-radioChico, 0);
  endShape(CLOSE);
}
