class cuerpo extends monitosfeos{
  cuerpo (float x_, float y_){
    super();
    x=x_;
    y=y_;
  }
    
    void display(){
      pushMatrix();
      scale(0.12);
    image(mono,x,y);  
    popMatrix();
  }
  
}

class cuerpo1 extends monitosfeos{
  cuerpo1 (float x_, float y_){
    super();
    x=x_;
    y=y_;
  }
    
    void display(){
      pushMatrix();
      scale(0.03);
    image(simi,x,y);  
    popMatrix();
  }
  
}

class cuerpo2 extends monitosfeos{
  cuerpo2 (float x_, float y_){
    super();
    x=x_;
    y=y_;
  }
    
    void display(){
      pushMatrix();
      scale(0.03);
    image(kirby,x,y);  
    popMatrix();
  }
  
}

class cuerpo3 extends monitosfeos{
  cuerpo3 (float x_, float y_){
    super();
    x=x_;
    y=y_;
  }
    
    void display(){
      pushMatrix();
      scale(0.4);
    image(cat,x,y);  
    popMatrix();
  }
  
}

class cuerpo4 extends monitosfeos{
  cuerpo4 (float x_, float y_){
    super();
    x=x_;
    y=y_;
  }
    
    void display(){
      pushMatrix();
      scale(0.035);
    image(cut,x,y);  
    popMatrix();
  }
  
}