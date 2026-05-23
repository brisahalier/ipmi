PImage imgLeñador, imgCasa, imgGretel, imgArbol, imgNiños, imgArbol2, imgNiños2, imgPadres, imgPajaroNiños, imgPajaro, imgComiendo, imgCasa2, imgBruja, imgBrujaCara, imgGretelBalde,imgBruja3,imgJaula,imgHorno,imgGretelBruja,imgJoyas,imgFinal,imgBoton;
float xLeñador, xCasa, xGretel, xNiños, yNiños,xBruja3,xJaula;
float yEscena5 = 480, yEscena6 = 480, yEscena7 = 480;
float xTexto = -600;
float xBrujaCara = 640;
float yGretelBruja,xHorno;
float yJoyas;
int tiempo;
int escena;
int inicio=0;
PFont miFuente;

void setup() {
  size(640, 480);
  imgLeñador = loadImage("leñador.png");
  imgCasa = loadImage("casa.png");
  imgGretel = loadImage("gretel.png");
  imgArbol = loadImage("arbol.png");
  imgNiños = loadImage("hyg.png");
  imgArbol2 = loadImage("arbol2.png");
  imgNiños2 = loadImage("hyg2.png");
  imgPadres = loadImage("padres.png");
  imgPajaroNiños = loadImage("pajaroniños.png");
  imgPajaro = loadImage("pajaro.png");
  imgComiendo = loadImage("comiendo.png");
  imgCasa2 = loadImage("casa2.png");
  imgBruja = loadImage("bruja.png");
  imgBrujaCara = loadImage("brujacara.png");
  imgGretelBalde = loadImage("gretelbalde.png");
imgBruja3 = loadImage("bruja3.png");
imgJaula = loadImage("jaula.png");
imgGretelBruja = loadImage("gretelbruja.png");
imgHorno = loadImage("horno.png");
imgJoyas=loadImage("joyas.png");
imgFinal=loadImage("final.png");
imgBoton=loadImage("boton.png");
 miFuente = createFont("Complex",48); 

  xLeñador = -300;
  xCasa = 640;
  xGretel = 640;
  xNiños = -400;
  yNiños = 200;
  xBruja3=-400;
  xJaula=640;
  yGretelBruja=480;
  xHorno=640;
  yJoyas=480;
  tiempo = 0;
  escena = inicio ;
}

void draw() {
   if (escena == inicio) {
    dibujarEscena0();
   }if (escena == 1) {
    dibujarEscena1();
  } else if (escena == 2) {
    dibujarEscena2();
  } else if (escena == 3) {
    dibujarEscena3();
  } else if (escena == 4) {
    dibujarEscena4();
  } else if (escena == 5) {
    dibujarEscena5();
  } else if (escena == 6) {
    dibujarEscena6();
  } else if (escena == 7) {
    dibujarEscena7();
  } else if (escena == 8) {
    dibujarEscena8();
  } else if (escena == 9) {
    dibujarEscena9();
  } else if (escena == 10) {
    dibujarEscena10();
  } else if (escena == 11){
    dibujarEscena11();
  }else if (escena == 12){
    dibujarEscena12();
  } else if (escena == 13){
    dibujarEscena13();
  }else if (escena == 14){
    dibujarEscena14();
  } else if (escena == 15){
    dibujarEscena15();
  }
}


void mousePressed() {
  //boton empezasr
  if (escena == inicio) {
    if (mouseX > 260 && mouseX < 380 && mouseY > 360 && mouseY < 390) {
      escena = 1; 
      tiempo = 0;
    }
  }
 //boton
   if (escena == 15) {
    if (mouseX > 250 && mouseX < 390 && mouseY > 360 && mouseY < 390) {
      escena = inicio;
      tiempo = 0;
      
      xTexto = -600;
      xLeñador = -300;
      xCasa = 640;
      xGretel = 640;
      xNiños = -400;
      yNiños = 200;
      xBruja3 = -400;
      xJaula = 640;
      yGretelBruja =480;
      xHorno = 640;
      yJoyas = 480;
      xBrujaCara = 640;
      yEscena5 = 480;
      yEscena6 = 480;
      yEscena7 = 480;
    }
  }
}
