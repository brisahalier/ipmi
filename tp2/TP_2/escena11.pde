void dibujarEscena11() {
  background(0); 
  if (xBruja3 < 0) {
    xBruja3 += 10;
  }
  if (xJaula > 340) {
    xJaula -= 10;
  }
  if (xTexto < 40) {
    xTexto += 20;
  }
  image(imgBruja3, xBruja3, 50, 320, 430); 
  image(imgJaula, xJaula, 50, 300, 430); 

//text
  noStroke();
  fill(255, 40); 
  rect(xTexto, 30, 560, 80, 15);

  fill(255);
  textSize(16);
  text("Cada mañana, la bruja obligaba a Gretel a cocinr para Hansel.¡Come, niño!, decía, tienes que estar gordo para cuando decida que es hora del banquete.", xTexto + 20, 40, 520, 65);
  
  tiempo++;
  if (tiempo >420){
    escena = 12;
    tiempo = 0;
     xTexto = -600;
   xBruja3=-400;
   xJaula= 640;
  }
}
