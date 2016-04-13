class Felho {
  float x;
  float y;
  float seb;
  float r;
  
  void barany() {
    fill (#B7F0F2, 65);
    noStroke();
    ellipse (x, y, r*25, r);
  }
  
  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r=random(70,100);
    seb=random(-2, 2);
   }
  
  void mozogj() {
    if((seb>0) && (x>width+100)){
      seb=seb*-1;
    }
    else if((seb<0) && (x<0-100)){
      seb=seb*-1;
    }
    else{
      x=x+seb;
    }
    
  }
}



class Csillag {
  float x=0;
  float y=0;
  float r=0;

  void ragyogj() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r, r);
  }

  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r=random(1, 5);
  }
}

class Hold {
  float x;
  float y;
  float r;

  float fazis;
  
  void vilagits() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(#2C2AB7);
    ellipse(x+r*0.7, y-r*0.7, 2*r, 2*r);
  }
  
  void mozogj(){
    if(x<width+100){
      x=x+0.5;
    }
    else{
      x=0;
    }
  }
}

Csillag[] csillagok = new Csillag[1000];

Csillag cs1=new Csillag();
Csillag cs2=new Csillag();
Csillag cs3=new Csillag();
Hold hold=new Hold(); 

Felho[] felhok = new Felho[20];

void setup() {
  size(500, 500);
  
  for(int i=0;i<1000;i++)
  {
    csillagok[i]=new Csillag();
    csillagok[i].szuless();
  }
 
  for(int i=0;i<20;i++)
  {
    felhok[i]=new Felho();
    felhok[i].szuless();
  }
  
  hold.x=50;
  hold.y=75;
  hold.r=40;
}

void draw() {
  background(#2C2AB7);
  hold.vilagits();
  hold.mozogj();
  for(int i=0;i<1000;i++)
  {
    csillagok[i].ragyogj();
  }

  for(int i=0;i<20;i++)
  {
    felhok[i].mozogj();
    felhok[i].barany();
  }
}