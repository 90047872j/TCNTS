

class Bola

{
  int x;
  int y;
  int vx;
  int vy;
  int d=(int)random(30,60);
  
  color frente = color(random(255),125,125);
  
  Bola( int pX, int pY){
    x=pX;
    y=pY;
  }
  
  void lineas(){
    strokeWeight(5);
    stroke(150);
    
      for( int i = 0 ; i < lista_bolas.size(); i++ ) 
      {
         Bola b = (Bola)lista_bolas.get(i);    
         line(x,y,b.x,b.y);
      }
  }
  
  void dibuixar()
  {
    
    noStroke();
    fill( 210 );   
    pushMatrix();
    translate(x,y,0);
    sphere(d);
    popMatrix();
    
    // ellipse( x , y , d, d  );  
  }   
 
 
 void setVelocitat( int vX, int vY)
 
 {
  
   vx=vX;
   vy=vY;

   
 }
   
   
   
 void randVelocitat(){

 setVelocitat( (int)random(-10,10) , (int)random(-10,10) );   
 }
  
    
  


void moure() {
  x+= vx;
  y+= vy;
  
      if( x >= width-(int)(d) || x <= (int)(d) )
    {
      vx *= -1;
    }  
  
    if( y >= height-(int)(d) || y <= (int)(d) )
    {
      vy *= -1;
    }
    
    
    for(int i =0; i<lista_bolas.size();i++){
      Bola b = (Bola)lista_bolas.get(i);
      if ( (dist(x,y,b.x,b.y) < (d)+ (b.d)) && x!=b.x) {
         vx *= -1;
         vy *= -1;
         
      }
    }
  
  
  
}
}


