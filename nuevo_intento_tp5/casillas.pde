class Casilla {
  Bomba bomba;
  int posX;
  int posY;
  int posXBomba;
  int posYBomba;
  int posX2;
  int posY2;
  int tam;
  PImage imagen1;
  boolean casillaPresionada; 
  PImage imagen2;
  float  numeroRandomCasillas;
  int cantCasillas;

  Casilla(int _posX, int _posY, int _tam, int _cantCasillas, Bomba _bomba) {
    posXBomba = _posX;
    posYBomba = _posY;
    tam = _tam;    
    bomba = _bomba;
    cantCasillas = _cantCasillas;   
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
    
  }

  Casilla(int _posX, int _posY, int _tam, int _cantCasillas) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
    cantCasillas =  _cantCasillas;
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
    cantCasillas = _cantCasillas;
  }

  boolean hayBomba(int posX, int posY) {
    if (bomba != null && posX == posXBomba && posY == posYBomba) {
      return true;
    } else {
      return false;
    }
  } 

  void mostrar(int i, int j, int posX, int posY) {     
    if(posX == posXBomba+1 && posY == posYBomba) {
    image(imagen2, (posX * tam)+15, ((posY+1) * tam)+100, tam, tam);
    }else{
     image(imagen1, (posX* tam)+15, (posY * tam)+100, tam, tam); 
    }
    
  }

  void tieneXMinasAlrededor(int cantMinas){
   println (cantMinas); 
  }


  void perdiste() { 
    image(imagen2, (posXBomba * tam)+15, (posYBomba * tam)+100, tam, tam);
    image(imagen1, (posX* tam)+15, (posY * tam)+100, tam, tam);
    
  }
}
