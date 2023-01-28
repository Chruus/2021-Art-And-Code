void setup(){
  size(500,500);
  frameRate(24);
  rectMode(CENTER);
}
float zgx=250;
float zgy=250;
float zgs=40;
int states=62;
int r, g, b;
int count;

void draw(){
  background(200);
//Colors
  stroke(r,g,b);
  strokeWeight(10);
  if(count>6){count=0;}
  if(count==0){r=255;g=b=0;}
  if(count==1){r=255;g=127;b=0;}
  if(count==2){r=255;g=255;b=0;}
  if(count==3){r=0;g=255;b=0;}
  if(count==4){r=0;g=255;b=255;}
  if(count==5){r=g=0;b=255;}
  if(count==6){r=255;g=0;b=255;}
//Diamond to Cross
  if(frameCount%states==0){
    count++;
    line(250,0,500,250);
    line(500,250,250,500);
    line(250,500,0,250);
    line(0,250,250,0);
  }else if(frameCount%states==1){
    line(250,0,365,135);
    line(365,135,500,250);
    line(500,250,365,365);
    line(365,365,250,500);
    line(250,500,135,365);
    line(135,365,0,250);
    line(0,250,135,135);
    line(135,135,250,0);
  }else if(frameCount%states==2){
    line(250,0,355,145);
    line(355,145,500,250);
    line(500,250,355,355);
    line(355,355,250,500);
    line(250,500,145,355);
    line(145,355,0,250);
    line(0,250,145,145);
    line(145,145,250,0);
  }else if(frameCount%states==3){
    line(250,0,345,155);
    line(345,155,500,250);
    line(500,250,345,345);
    line(345,345,250,500);
    line(250,500,155,345);
    line(155,345,0,250);
    line(0,250,155,155);
    line(155,155,250,0);
  }else if(frameCount%states==4){
    line(250,0,335,165);
    line(335,165,500,250);
    line(500,250,335,335);
    line(335,335,250,500);
    line(250,500,165,335);
    line(165,335,0,250);
    line(0,250,165,165);
    line(165,165,250,0);
  }else if(frameCount%states==5){
    line(250,0,325,175);
    line(325,175,500,250);
    line(500,250,325,325);
    line(325,325,250,500);
    line(250,500,175,325);
    line(175,325,0,250);
    line(0,250,175,175);
    line(175,175,250,0);
  }else if(frameCount%states==6){
    line(250,0,315,185);
    line(315,185,500,250);
    line(500,250,315,315);
    line(315,315,250,500);
    line(250,500,185,315);
    line(185,315,0,250);
    line(0,250,185,185);
    line(185,185,250,0);
  }else if(frameCount%states==7){
    line(250,0,305,195);
    line(305,195,500,250);
    line(500,250,305,305);
    line(305,305,250,500);
    line(250,500,195,305);
    line(195,305,0,250);
    line(0,250,195,195);
    line(195,195,250,0);
  }else if(frameCount%states==8){
    line(250,0,295,205);
    line(295,205,500,250);
    line(500,250,295,295);
    line(295,295,250,500);
    line(250,500,205,295);
    line(205,295,0,250);
    line(0,250,205,205);
    line(205,205,250,0);
  }else if(frameCount%states==9){
    line(250,0,285,215);
    line(285,215,500,250);
    line(500,250,285,285);
    line(285,285,250,500);
    line(250,500,215,285);
    line(215,285,0,250);
    line(0,250,215,215);
    line(215,215,250,0);
  }else if(frameCount%states==10){
    line(250,0,275,225);
    line(275,225,500,250);
    line(500,250,275,275);
    line(275,275,250,500);
    line(250,500,225,275);
    line(225,275,0,250);
    line(0,250,225,225);
    line(225,225,250,0);
  }else if(frameCount%states==11){
    line(250,0,265,235);
    line(265,235,500,250);
    line(500,250,265,265);
    line(265,265,250,500);
    line(250,500,235,265);
    line(235,265,0,250);
    line(0,250,235,235);
    line(235,235,250,0);
  }else if(frameCount%states==12){
    line(250,0,255,245);
    line(255,245,500,250);
    line(500,250,255,255);
    line(255,255,250,500);
    line(250,500,245,255);
    line(245,255,0,250);
    line(0,250,245,245);
    line(245,245,250,0);
//Wait #1
  }else if(frameCount%states>12&&frameCount%states<24){
    beginShape();
    line(250,250,500,250);
    line(250,250,250,500);
    line(250,250,0,250);
    line(250,250,250,0);
    endShape();
//Spin
  }else if(frameCount%states>=24&&frameCount%states<38){
    pushMatrix();
    translate(width/2,height/2);
    if(frameCount%states==24){
      rotate(radians(5));
    }else if(frameCount%states==24){
      rotate(radians(10));
    }else if(frameCount%states==25){
      rotate(radians(15));
    }else if(frameCount%states==26){
      rotate(radians(25));
    }else if(frameCount%states==27){
      rotate(radians(35));
    }else if(frameCount%states==28){
      rotate(radians(50));
    }else if(frameCount%states==29){
      rotate(radians(75));
    }else if(frameCount%states==30){
      rotate(radians(105));
    }else if(frameCount%states==31){
      rotate(radians(130));
    }else if(frameCount%states==32){
      rotate(radians(145));
    }else if(frameCount%states==33){
      rotate(radians(155));
    }else if(frameCount%states==34){
      rotate(radians(165));
    }else if(frameCount%states==35){
      rotate(radians(170));
    }else if(frameCount%states==36){
      rotate(radians(175));
    }else if(frameCount%states==37){
      rotate(radians(180));
    }
    fill(255,0,0);
    line(250,0,-250,0);
    line(0,250,0,-250);
    endShape();
    popMatrix();
//Cross to Diamond
  }else if(frameCount%states==38){
    line(250,0,255,245);
    line(255,245,500,250);
    line(500,250,255,255);
    line(255,255,250,500);
    line(250,500,245,255);
    line(245,255,0,250);
    line(0,250,245,245);
    line(245,245,250,0);
  }else if(frameCount%states==39){
    line(250,0,265,235);
    line(265,235,500,250);
    line(500,250,265,265);
    line(265,265,250,500);
    line(250,500,235,265);
    line(235,265,0,250);
    line(0,250,235,235);
    line(235,235,250,0);
  }else if(frameCount%states==40){
    line(250,0,275,225);
    line(275,225,500,250);
    line(500,250,275,275);
    line(275,275,250,500);
    line(250,500,225,275);
    line(225,275,0,250);
    line(0,250,225,225);
    line(225,225,250,0);
  }else if(frameCount%states==41){
    line(250,0,285,215);
    line(285,215,500,250);
    line(500,250,285,285);
    line(285,285,250,500);
    line(250,500,215,285);
    line(215,285,0,250);
    line(0,250,215,215);
    line(215,215,250,0);
  }else if(frameCount%states==42){
    line(250,0,295,205);
    line(295,205,500,250);
    line(500,250,295,295);
    line(295,295,250,500);
    line(250,500,205,295);
    line(205,295,0,250);
    line(0,250,205,205);
    line(205,205,250,0);
  }else if(frameCount%states==43){
    line(250,0,305,195);
    line(305,195,500,250);
    line(500,250,305,305);
    line(305,305,250,500);
    line(250,500,195,305);
    line(195,305,0,250);
    line(0,250,195,195);
    line(195,195,250,0);
  }else if(frameCount%states==44){
    line(250,0,315,185);
    line(315,185,500,250);
    line(500,250,315,315);
    line(315,315,250,500);
    line(250,500,185,315);
    line(185,315,0,250);
    line(0,250,185,185);
    line(185,185,250,0);
  }else if(frameCount%states==45){
    line(250,0,325,175);
    line(325,175,500,250);
    line(500,250,325,325);
    line(325,325,250,500);
    line(250,500,175,325);
    line(175,325,0,250);
    line(0,250,175,175);
    line(175,175,250,0);
  }else if(frameCount%states==46){
    line(250,0,335,165);
    line(335,165,500,250);
    line(500,250,335,335);
    line(335,335,250,500);
    line(250,500,165,335);
    line(165,335,0,250);
    line(0,250,165,165);
    line(165,165,250,0);
  }else if(frameCount%states==47){
    line(250,0,345,155);
    line(345,155,500,250);
    line(500,250,345,345);
    line(345,345,250,500);
    line(250,500,155,345);
    line(155,345,0,250);
    line(0,250,155,155);
    line(155,155,250,0);
  }else if(frameCount%states==48){
    line(250,0,355,145);
    line(355,145,500,250);
    line(500,250,355,355);
    line(355,355,250,500);
    line(250,500,145,355);
    line(145,355,0,250);
    line(0,250,145,145);
    line(145,145,250,0);
  }else if(frameCount%states==49){
    line(250,0,365,135);
    line(365,135,500,250);
    line(500,250,365,365);
    line(365,365,250,500);
    line(250,500,135,365);
    line(135,365,0,250);
    line(0,250,135,135);
    line(135,135,250,0);
//Wait #2
  }else if(frameCount%states>=50&&frameCount%states<62){
    line(250,0,500,250);
    line(500,250,250,500);
    line(250,500,0,250);
    line(0,250,250,0);
//I MADE PORTABLE ZOOG CODE
    strokeWeight(1);
    stroke(0);
    fill(150);
    rect(zgx, zgy+zgs*.2, zgs*.4, zgs*1.6);
    fill(255);
    ellipse(zgx, zgy-zgs*.6, zgs*1.2, zgs*1.2);
    fill(0);
    ellipse(zgx-zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    ellipse(zgx+zgs*.38, zgy-zgs*.6, zgs*.32, zgs*.64);
    stroke(0);
    line(zgx-zgs*.2, zgy+zgs, zgx-zgs*.4, zgy+zgs*1.2);
    line(zgx+zgs*.2, zgy+zgs, zgx+zgs*.4, zgy+zgs*1.2);
  }
}
