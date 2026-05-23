void dibujarEscena2() {
  background(#BF794D);
  if (xGretel > 190) xGretel -= 5;
  if (xTexto < 40) xTexto += 20;
  image(imgGretel, xGretel, 145, 450, 350);
  fill(0, 180);
  rect(xTexto, 20, 560, 110, 10);
  fill(255);
  textSize(16);
  text("Aquella noche, el hambre no dejaba dormir a los niños. Desde su cama, Gretel lloraba amargamente al escuchar como sus padres planeaban abandonarlos en el bosque al amanecer. Hansel le susurró: 'No llores, hermanita, que yo encontraré la forma de salvarnos'.", xTexto + 20, 35, 520, 100);
  tiempo++;
  if (tiempo > 240) {
    escena = 3;
    tiempo = 0;
    xNiños = -400;
    xTexto = -600;
  }
}
