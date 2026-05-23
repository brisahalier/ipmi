void dibujarEscena7() {
  background(#D3B871);
  if (yEscena7 > 0) yEscena7 -= 8.0;
  else if (xTexto < 40) xTexto += 20;
  
  image(imgArbol, 80, 150 + yEscena7, 160, 350);
  image(imgArbol, 240, 160 + yEscena7, 130, 320);
  image(imgArbol, 420, 140 + yEscena7, 140, 340);
  image(imgArbol, 560, 120 + yEscena7, 160, 360);
  
  stroke(65, 75, 45);
  strokeWeight(15);
  line(0, 340 + yEscena7, width/2 - 50, 320 + yEscena7);
  line(width/2 - 50, 320 + yEscena7, width/2 + 50, 320 + yEscena7);
  line(width/2 + 50, 320 + yEscena7, 640, 340 + yEscena7);
  imageMode(CENTER);
  
  image(imgPajaro, width/2, 300 + yEscena7, 400, 320);
  imageMode(CORNER);
  noStroke();
  fill(0, 190);
  rect(xTexto, 30, 560, 85, 15);
  fill(255);
  textSize(16);
  text("Siguiendo al hermoso pájaro, Hansel y Gretel caminaron hasta que el sol brilló en lo alto. De repente, apareció una casita muy especial hecha de bizcochuelo y azúcar.", xTexto + 25, 42, 510, 75);
  tiempo++;
  if (tiempo > 240) {
    escena = 8;
    tiempo = 0;
    yEscena7 = 480;
    xTexto =-600;
  }
}
