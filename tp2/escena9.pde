void dibujarEscena9() {
  background(230);
  if (xTexto < 40){
    xTexto += 20;
    }
  if (yEscena7 > 0) yEscena7 -= 8.0;
  
  image(imgArbol, 180, 130 + yEscena7, 150, 350);
  image(imgArbol, 320, 140 + yEscena7, 140, 340);
  image(imgArbol, 100, 130 + yEscena7, 150, 350);
  image(imgArbol, 220, 140 + yEscena7, 140, 340);
  image(imgArbol, 10, 130 + yEscena7, 150, 350);
  image(imgArbol, 90, 140 + yEscena7, 140, 340);
  image(imgArbol, 400, 130 + yEscena7, 150, 350);
  image(imgArbol, 520, 140 + yEscena7, 140, 340);
  image(imgBruja, 0, 80 + yEscena7, 640, 400); 
  
  noStroke(); 
  fill(90);
  rect(xTexto, 15, 560, 80, 15); 
  
  fill(255);
  textSize(16);
  text("De pronto, la puerta se abrió y una mujer vieja, que se apoyaba en una muleta, salió de la casa. Hansel y Gretel se asustaron tanto que soltaron la comida.",xTexto+ 25, 30, 510, 70);
  tiempo++;
  if (tiempo > 240) {
    escena = 10; 
    tiempo = 0;
    xTexto = -600;
  }
}
