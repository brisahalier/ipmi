void dibujarEscena6() {
  background(20, 35, 55);
  
  if (yEscena6 > 0) yEscena6 -= 8;
  else if (xTexto < 40) xTexto += 20;
  
  image(imgPajaroNiños, 70, yEscena6 + 100, 500, 375);
  
  fill(0, 190);
  rect(xTexto, 15, 560, 110, 15);
  fill(255);
  textSize(15);
  text("Habiendo caminado toda la noche, un hermoso pájaro blanco como la nieve los guió. Sus alas brillaban en la penumbra del bosque, dándoles una esperanza que creían perdida.", xTexto + 20, 45, 520, 90);
  tiempo++;
  if (tiempo > 240) {
    escena = 7;
    tiempo = 0;
    xTexto = -600;
    yEscena7 = 480;
  }
}
