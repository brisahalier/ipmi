void dibujarEscena1() {
  PFont defaultFont = createFont("SansSerif", 16);
  textFont(defaultFont);
  textAlign(LEFT, TOP);
  
  background(130);
  fill(50, 70, 40);
  noStroke();
  ellipse(320, 600, 1000, 450);
  
  if (xLeñador < 50) xLeñador += 5;
  if (xCasa > 300) xCasa -= 5;
  if (xTexto < 40) xTexto += 20;
  
  image(imgCasa, xCasa, 70, 300, 400);
  image(imgLeñador, xLeñador, 180, 250, 300);
  
  fill(0, 150);
  rect(xTexto, 20, 560, 80, 10);
  fill(255);
  textSize(16);
  
  text("En el borde de un bosque inmenso, vivía un pobre leñador con su mujer y sus dos hijos; el niño se llamaba Hansel y la niña, Gretel.", xTexto + 20, 40, 520, 80);
  
  tiempo++;
  if (tiempo > 240) {
    escena = 2;
    tiempo = 0;
    xTexto = -600;
  }
}
