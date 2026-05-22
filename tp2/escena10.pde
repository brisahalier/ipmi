void dibujarEscena10() {
  background(0); 
  
  //animacion
  if (xBrujaCara > 240) xBrujaCara -= 10; 
  
 //texto entra x iz
  if (xTexto < 30){
  xTexto += 20; 
  }
  image(imgBrujaCara, xBrujaCara, 80, 400, 400); 
  
  noStroke(); 
  fill(255, 40); 
  rect(xTexto, 100, 280, 120, 15);
  
  fill(255);
  textSize(16);
  text("La vieja no era tan buena como parecía. En realidad, era una bruja malvada que construía casas de dulce para atraer a los niños.", xTexto + 20, 120, 240, 140);
  
  tiempo++;
  if (tiempo > 420) { 
    escena = 11;
    tiempo = 0;
    xTexto = -600;
    xBruja3 = -400;
    xJaula = 640;
  }
}
