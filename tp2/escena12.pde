void dibujarEscena12() {
  background(#271204);

  if (yGretelBruja > 225) yGretelBruja -= 10;
  if (xHorno > 0) xHorno -= 10;
  if (xTexto < 40) xTexto += 20;

  image(imgHorno, xHorno, 140, 640, 340);
  image(imgGretelBruja, 260, yGretelBruja, 400, 275);


  noStroke();
  fill(255, 40);
  rect(xTexto, 30, 560, 80, 15);

  fill(255);
  textSize(15);
  text("La bruja quería meter a Gretel al horno, pero la niña fingió no saber cómo entrar. 'Muéstrame tú', pidió. Cuando la malvada vieja se asomó, Gretel la empujó con todas sus fuerzas dentro del fuego y cerro la pesada puerta de hierro.", xTexto + 20, 40, 520, 95);

  tiempo++;
  if (tiempo > 240) {
    escena = 13;
    tiempo = 0;
    xTexto = -600;
  }
}
