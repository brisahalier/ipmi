void dibujarEscena8() {
  background(255);
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
  image(imgCasa2, 320, 130 + yEscena7, 320, 350);
  image(imgComiendo, 0, 150 + yEscena7, 450, 330);
  
  noStroke();
  fill(0, 170);
  rect(xTexto, 15, 560, 85, 15);
  
  fill(255);
  textSize(16);
  text("¡Qué delicia! Hansel y Gretel, hambrientos, no pudieron resistirse y empezaron a comer trozos de la dulce casita. El pajarito blanco los miraba desde el techo.",xTexto +25, 27, 510, 75);
 
  tiempo++;
  if (tiempo > 240) {
    escena = 9;
    tiempo = 0;
    yEscena7 = 480;
    xTexto = -600;
  }
}
