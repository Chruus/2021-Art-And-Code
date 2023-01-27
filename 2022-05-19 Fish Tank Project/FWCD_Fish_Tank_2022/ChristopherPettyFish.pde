import processing.sound.*;

class ChristopherPettyFish extends AnimatedObject {
  ChristopherPettyFish(PApplet _sound, boolean _canFireLazer) {
    x=zoogX=width/2;
    y=zoogY=height/2;
    sound=_sound;
    playSound=true;
    canFireLazer=_canFireLazer;
    scale=.25;
    zoogScale=scale*6.68;
    frame=1;

    Images = new ArrayList <PImage>();
    Images.add(loadImage("CPSmall.png"));
    Images.add(loadImage("CPMedium.png"));
    Images.add(loadImage("CPLarge.png"));
    Images.add(loadImage("CPXLarge.png"));
    Images.add(loadImage("CPLazer2.png"));
    firingMaLazer = new SoundFile(sound, "Lazer2.wav");
  }

  ChristopherPettyFish(int _x, int _y, PApplet _sound, boolean _canFireLazer) {
    x=zoogX=_x;
    y=zoogY=_y;
    sound=_sound;
    playSound=true;
    canFireLazer=_canFireLazer;
    scale=.25;
    zoogScale=scale*6.68;
    frame=1;

    Images = new ArrayList <PImage>();
    Images.add(loadImage("CPSmall.png"));
    Images.add(loadImage("CPMedium.png"));
    Images.add(loadImage("CPLarge.png"));
    Images.add(loadImage("CPXLarge.png"));
    Images.add(loadImage("CPLazer.png"));
  }

  ArrayList <PImage> Images;

  boolean anim;
  boolean canFireLazer;
  boolean finale;
  boolean firingAllLazers;
  boolean firingLazer;
  boolean playSound;
  boolean timerb;

  float rotation;
  float scale;
  float zoogScale;

  int code;
  int currentTime;
  int frame;
  int randomPlayer;
  int startTime;
  int timer;
  int x;
  int y;
  int zoogX;
  int zoogY;   

  PApplet sound;

  SoundFile firingMaLazer;

  boolean isTime() {
    if (timerb) {
      timerb=false;
      return true;
    }
    return false;
  }


  int getX() {
    return (int) x;
  }

  int getY() {
    return (int) y;
  }

  String checkCurrentRandom(String input) {
    if (input.length()>40) {
      input = input.substring(20, 40);
      return input;
    }
    return "";
  }

  void animation() {
    if (firingAllLazers) {
      for (int i=0; i<objs.size()-1; i++) {
        pushMatrix();
        pushStyle();
        scale(scale);
        translate(x/scale, y/scale);
        rotation = atan2(objs.get(i).getY()-y, objs.get(i).getX()-x);
        if (degrees(rotation)<90&&degrees(rotation)>-90) {
          rotate(rotation);    
          scale(-1, 1);
        } else 
        rotate(rotation-radians(180));

        changeFrame();
        displayFace();
        if (firingLazer)
          displayLazer();

        popStyle();
        popMatrix();
      }
    } else {
      pushMatrix();
      pushStyle();
      scale(scale);
      translate(x/scale, y/scale);
      rotation = atan2(objs.get(randomPlayer).getY()-y, objs.get(randomPlayer).getX()-x);
      if (degrees(rotation)<90&&degrees(rotation)>-90) {
        rotate(rotation);    
        scale(-1, 1);
      } else 
      rotate(rotation-radians(180));

      changeFrame();
      displayFace();
      if (firingLazer)
        displayLazer();

      popStyle();
      popMatrix();
    }
  }

  void changeFrame() {
    if (frame<39) {
      currentTime=millis();
      if (currentTime-startTime>=54) {
        frame++;
        startTime=millis();
      }
    } else {
      firingLazer=true;
      startTime(30);
      if (isTime()) {
        if (firingAllLazers) {
          frame=code=1;
          anim=firingLazer=firingAllLazers=false;
          for (int j=0; j<objs.size()-1; j++) {
            objs.add(j, new ChristopherPettyFish(objs.get(j).getX(), objs.get(j).getY(), sound, false));
            objs.remove(j+1);
          }
        } else {
          frame=1;
          anim=firingLazer=false;
          objs.add(randomPlayer, new ChristopherPettyFish(objs.get(randomPlayer).getX(), objs.get(randomPlayer).getY(), sound, false));
          objs.remove(randomPlayer+1);
        }
      }
    }
  }


  void display() {
    keyPress();
    pushStyle();
    pushMatrix();
    rectMode(CENTER);
    imageMode(CENTER);
    tint(255);
    if (finale)finale();
    zoog();
    if (anim)animation();
    popMatrix();
    popStyle();
  }

  void displayFace() {
    if (frame==1||frame==9||frame==16||frame==20||frame==21||frame==24||frame==28||frame==29||frame==30||frame==38) {
      image(Images.get(0), 0, 0);
    }
    if (frame==2||frame==4||frame==5||frame==8||frame==10||frame==15||frame==19||frame==22||frame==25||frame==27||frame==37) {
      image(Images.get(1), 0, 0);
    }
    if (frame==6||frame==11||frame==13||frame==17||frame==23||frame==31||frame==33||frame==35) {
      image(Images.get(2), 0, 0);
    }
    if (frame==3||frame==7||frame==12||frame==14||frame==18||frame==26||frame==32||frame==34||frame==36||frame==39) {
      image(Images.get(3), 0, 0);
    }
  }

  void displayLazer() {
    pushMatrix();
    translate(-2350, 75);
    scale(.3125);
    image(Images.get(4), 0, 0);
    popMatrix();
  }

  void finale() {
    pushStyle();
    pushMatrix();
    textSize(150);
    textAlign(CENTER);
    for (int i=125; i<height; i+=150)
      text("Zoog Has Taken Over DC!", width/2, i);
    scale=.8;
    zoogY=y-=2;
    zoogScale=scale*6.68;
    fill(255, 255, 0, 50);
    ellipse(zoogX, zoogY, 1000, 1000);
    fill(255, 255, 0, 75);
    ellipse(zoogX, zoogY, 750, 750);
    fill(255, 255, 0, 100);
    ellipse(zoogX, zoogY, 500, 500);
    popMatrix();
    popStyle();
  }

  void keyPress() {
    if (keyPressed) {
      if (key==' '&&anim==false&&canFireLazer) {
        randomPlayer = (int) random(0, objs.size());
        for (int i=0; i<1000; i++) {
          String randomFish = objs.get(randomPlayer).toString();
          if (checkCurrentRandom(randomFish).equals("ChristopherPettyFish"))
            randomPlayer = (int) random(0, objs.size());

          else {
            anim=true;   
            if (playSound)
              firingMaLazer.play();
            break;
          }
          if (i==objs.size()*50) {
            finale=true;
            break;
          }
        }
      }
      if (key=='m') {
        playSound=!playSound;
      }
      if (key=='c'&&frameCount%30==0) {
        if (code<10)
          code++;
        else
          code=1;
      }
    }
    if (code==8)
      firingAllLazers=true;
    else
      firingAllLazers=false;
  }


  void startTime(int endTime) {
    timer++;
    if (timer>=endTime) {
      timer=0;
      timerb=true;
    }
  }

  void zoog() {
    pushStyle();
    pushMatrix();
    scale(zoogScale);
    translate(zoogX/zoogScale, zoogY/zoogScale);
    //Body
    stroke(0);
    fill(150);
    rect(0, 30, 20, 100);
    //Head
    fill(255);//240, 115
    ellipse(0, 0, 60, 60);
    //Eyes
    if (firingAllLazers)
      fill(255, 0, 0);
    else
      fill(0);
    ellipse(-19, 0, 16, 32);
    ellipse(19, 0, 16, 32);
    //Legs
    stroke(0);
    line(-10, 80, -20, 90);
    line(10, 80, 20, 90);
    popMatrix();
    popStyle();
  }
}
