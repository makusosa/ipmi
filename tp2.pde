//Sosa, Maku
//Tp2 Comisión 1

int bX, bY, bAncho, bAlto;
int py, py2, py3, px, px2, px3, px32, px33;
int segundos;
PFont fuente;
String estado;
PImage imagen1, imagen2, imagen3, imagen32, imagen33, imagen4;

void setup() {
  size(640, 480);

  fuente= loadFont("calibri.vlw");
  py2 = height;
  py3 = height;
  py = 300;
  px = 120;
  px2 = 50;
  px3 = 100;
  px32 = 320;
  px33 = 530;
  estado = "pantalla1";
  imagen1 = loadImage("fcfondo.jpg");
  imagen2 = loadImage("director.jpg");
  imagen3 = loadImage("tyler.jpg");
  imagen32 = loadImage("narrador.jpg");
  imagen33 = loadImage("marla.jpg");
  imagen4 = loadImage("fcfondo2.jpg");
  bX = 40;
  bY = 40;
  bAncho = 120;
  bAlto = 50;
}

void draw() {
  if (estado.equals("pantalla1")) {
    image(imagen1, 0, 0, 640, 480);
    fill(250, 88, 248);
    textFont(fuente, 50);
    text("'El Club de la Pelea'", 120, py);
    if (py > 45) {
      py--;
    }
  } else if (estado.equals("pantalla2")) {
    image(imagen2, 0, 0, 640, 480);
    fill(0);
    textFont(fuente, 40);
    text("Dirigida por \n David Fincher", px2, py2);
    if (py > 60) {
      py2--;
    }
  } else if (estado.equals("pantalla3")) {
    image(imagen3, 0, 0, 213, 480);
    image(imagen32, 213, 0, 213, 480);
    image(imagen33, 426, 0, 214, 480);
    fill(0, 255, 255);
    textFont(fuente, 30);
    textAlign (CENTER);
    text("Brad Pitt \n como \n Tyler Durden", px3, py3);
    text("Edward Norton \n como \n 'El narrador'", px32, py3);
    text("Helena Bonham \n Carter \n como \n Marla Singer", px33, py3);
    if (py3>45) {
      py3--;
    }
  } else if (estado.equals("pantalla4")) {
    image(imagen4, 0, 0, 640, 480);
    fill(28, 232, 206);
    rect(bX, bY, bAncho, bAlto);
    fill(0);
    textFont(fuente, 30);
    text("Reiniciar", 40, 50, bAncho, bAlto);
  }

  if (frameCount % 60 == 0) {
    segundos++;
  }

  if (segundos < 6 && py > 45) {
    estado = "pantalla1";
  } else if (segundos >= 6 && segundos < 13) {
    estado = "pantalla2";
    py = 300;
  } else if (segundos > 13 && segundos < 23) {
    estado = "pantalla3";
    py = height;
  } else if (segundos >= 23) {
    estado = "pantalla4";
    py = height;
  }
}

void mousePressed() {
  if (estado.equals("pantalla4") &&
    mouseX >= bX && mouseX <= bX + bAncho &&
    mouseY >= bY && mouseY <= bY + bAlto) {
    estado = "pantalla1";
    segundos = 0;
    py = 300;
    py2 = height;
    py3 = height;
    py = 300;
    px = 120;
    px2 = 50;
    px3 = 100;
    px32 = 320;
    px33 = 530;
  }
}
