void dibujarEscena3() {
  background(180, 210, 150);
  fill(40, 60, 30);
  noStroke();
  ellipse(320, 550, 1000, 500);
  image(imgArbol, 80, 100, 150, 350);
  image(imgArbol, 240, 120, 130, 320);
  image(imgArbol, 420, 90, 140, 340);
  image(imgArbol, 560, 110, 160, 360);
  
  if (xNiños < 120) xNiños += 5;
  if (xTexto < 40) xTexto += 20;
  
  image(imgNiños, xNiños, 200, 400, 300);
  
  fill(0, 150);
  rect(xTexto,20, 560, 90, 10);
  
  fill(255);
  textSize(16);
  text("Al amanecer, la madrastra los despertó. '¡Arriba, holgazanes! Iremos al bosque'. Hansel, mientras caminaba, se quedaba atrás, soltando las piedritas blancas que había juntado por la noche, para marcar el camino de vuelta.", xTexto + 20, 25, 520, 80);
  tiempo++;
  if (tiempo > 240) {
    escena = 4;
    tiempo = 0;
    xNiños = 10;
    yNiños = 150;
    xTexto = -600;
  }
}
