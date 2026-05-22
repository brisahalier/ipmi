void dibujarEscena5() {
  background(215, 200, 175);
  if (yEscena5 > 0) yEscena5 -= 5;
  else if (xTexto < 40) xTexto += 20;
  
  fill(80, 60, 40);
  rect(220, 50 + yEscena5, 200, 150);
  fill(20, 30, 50);
  rect(230, 60 + yEscena5, 180, 130);
  fill(255);
  ellipse(320, 120 + yEscena5, 70, 70);
  
  image(imgPadres, 0, yEscena5, 640, 480);
  fill(90, 55, 35);
  rect(0, 380 + yEscena5, 640, 100);
  fill(0, 160);
  rect(xTexto, 395, 560, 75, 10);
  fill(255);
  textSize(15);
  text("Mientras tanto, en la cabaña, el remordimiento no dejaba dormir al leñador. Pero la mujer, con corazón de piedra, lo convencía sobre la mesa de que era lo mejor para sobrevivir.", xTexto + 20, 405, 520, 70);
  tiempo++;
  if (tiempo > 240) {
    escena = 6;
    tiempo = 0;
    xTexto = -600;
    yEscena6 = 480;
  }
}
