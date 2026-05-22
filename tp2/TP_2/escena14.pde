void dibujarEscena14() {
  background(#309AA5); 
image(imgArbol, 80, 100, 150, 350);
  image(imgArbol, 240, 120, 130, 320);
  image(imgArbol, 420, 90, 140, 340);
  image(imgArbol, 560, 110, 160, 360);
  
 //piso
  fill(50, 70, 40);
  noStroke();
  ellipse(320, 600, 1000, 450);

 
  imageMode(CORNER);
  image(imgFinal, 180, 230, 280, 210);

  //animacion
  if (xTexto < 40) {
    xTexto += 20;
  }

 
  noStroke();
  fill(0, 180); 
  rect(xTexto, 30, 560, 85, 15);

 
  fill(255);
  textSize(16);
  text("Al llegar a casa, su padre lloró de alegría. Jamás volvio a separarse de sus hijos. Con las riquezas de la bruja, nunca más pasaron hambre. Y así, vivieron felices para siempre.", xTexto + 20, 40, 520, 70);

  tiempo++;
  if (tiempo > 300) {
    escena = 15; 
    tiempo = 0;
    xTexto = -600;
  }
}
