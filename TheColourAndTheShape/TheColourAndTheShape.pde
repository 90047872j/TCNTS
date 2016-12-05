import processing.opengl.*;
PFont mifuente;


ArrayList lista_bolas = new ArrayList();
color fondo = color(18,72,128);


void setup() {
  mifuente = loadFont("font.vlw");
  textFont(mifuente, 80); 
  size(800,800,OPENGL);
  smooth();
  noStroke();
  frameRate(50);
  background(fondo);
  
}


void draw() {
  println(lista_bolas.size());
  
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  directionalLight(200, 200, 200, -dirX, -dirY, -1); 
  background(18,72,128);
  
  
      for( int i = 0 ; i < lista_bolas.size(); i++ ) 
      {
         Bola b = (Bola)lista_bolas.get(i);    
         b.lineas();
      }
  
  
    for( int i = 0 ; i < lista_bolas.size(); i++ ) 
      {
         Bola b = (Bola)lista_bolas.get(i);    
         b.dibuixar();
         b.moure();
      }
      
   fill(250,0,0);
   text("Processing",300,400,100);
  
  
  
}



void mousePressed(){
  
  Bola b = new Bola( mouseX,mouseY);
  lista_bolas.add(b);
  b.dibuixar();
  b.setVelocitat(0,0);
  
  
}


void keyPressed()

{
if ( key == 'Z' || key=='z' )
  {
    
    if( lista_bolas.size() > 1 )
    {
      lista_bolas.remove( lista_bolas.get(0) );
    }
    
    
  }
  else if ( key == 'V' || key=='v' ) {
    
    for (int i =0; i<lista_bolas.size(); i++ ) 
  {
     Bola b = (Bola)lista_bolas.get(i);
     b.randVelocitat();
  }     
}
  
} 


