void dibujarEscena13() {
  background(135, 90, 60);

  fill(80, 50, 30);
  noStroke();
  rect(0, 350, 640, 130);
  
  stroke(50, 30, 15);
  strokeWeight(4);
  line(0, 350, 640, 350);
  
  //ventana
  stroke(90, 60, 40);
  strokeWeight(8);
  fill(150, 200, 255); 
  rect(450, 140, 120, 140);
  
  strokeWeight(4);
  line(510, 140, 510, 280);
  line(450, 210, 570, 210);

  if (yJoyas > 160) {
    yJoyas -= 10;
  }

  if (xTexto < 40) {
    xTexto += 20;
  }

  image(imgJoyas, 0, yJoyas - 160, 640, 480);

 noStroke();
  fill(0, 180); 
  rect(xTexto, 20, 560, 85, 15);

  fill(255);
  textSize(16);
  text("Libres al fin! Antes de huir, Hansel y Gretel llenaron sus bolsillos con perlas y piedras preciosas que la bruja escondía.Ahora tenían suficiente para no pasar hambre jamás!", xTexto + 20, 35, 520, 75);

  tiempo++;
  if (tiempo > 240) {
    escena = 14; 
    tiempo = 0;
    xTexto = -600;
  }
}
