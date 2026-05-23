void dibujarEscena0() {
  background(0
    );

  textFont(miFuente);
  textAlign(CENTER, CENTER);

  image( imgBoton, 160, 240, 320, 270);

  textSize(55);
  fill(30);
  text("Hansel y Gretel", 320, 160);
  fill(#E8D3B9);
  text("Hansel y Gretel", 320, 160);

  //subt
  fill(150);
  textSize(20);
  text("Un cuento de los Hermanos Grimm", 320, 215);

  fill(20);
  noStroke();
  textSize(25);
  text("Iniciar", 320, 375);
}
