void dibujarEscena15() {
  background(0); 
  
  textFont(miFuente); 
  textAlign(CENTER, CENTER);

image( imgBoton, 160, 240, 320, 270);

  //titulo
  textSize(55);
  fill(30); 
  text("Fin", 320, 160);
  fill(#E8D3B9); 
  text("Fin", 320, 160);

  fill(150);
  textSize(20);
  text("El libro se cierra...por ahora", 320, 215);
  
  fill(20);
  noStroke();
  textSize(25);
  text("Reiniciar", 320, 375); 
}
