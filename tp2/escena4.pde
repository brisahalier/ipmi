void dibujarEscena4() {
  background(20, 50, 45);
  fill(60, 110, 100);
  rect(0, 0, 640, 250);
  fill(10, 30, 25);
  quad(0, 150, 640, 380, 640, 480, 0, 480);
  image(imgArbol2, 40, -140, 120, 350);
  image(imgArbol2, 180, -80, 110, 320);
  image(imgArbol2, 350, -30, 130, 340);
  image(imgArbol2, 520, 40, 100, 360);
  if (xNiños < 280) {
    xNiños += 1.0;
    yNiños += 0.35;
  }
  if (xTexto < 40) xTexto += 20;
  image(imgNiños2, xNiños, yNiños, 100, 80);
  fill(200, 220, 210, 80);
  rect(0, 0, 640, 480);
  fill(0, 180);
  rect(xTexto, 30, 560, 85, 10);
  fill(255);
  textSize(16);
  text("Pasó el día y nadie volvió. Los niños se quedaron solos en el bosque profundo, esperando. Se encendió una gran hoguera y el padre les dijo: 'Quédense aquí, hijos, volveremos por ustedes'. Pero no volvieron.", xTexto + 20, 40, 520, 70);
  tiempo++;
  if (tiempo > 240) {
    escena = 5;
    tiempo = 0;
    yEscena5 = 480;
    xTexto = -600;
  }
}
