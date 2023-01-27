void setup(){
size(1280,720);
}

//variables for eyes
int cs;
int wait=0;
int wait2=0;
boolean swi=false;

//variables for clouds
int cl1;
int cl1y;
boolean swit=false;
int cl2;
int cl2y;
boolean switc=false;

void draw(){
//misc settings//
  strokeWeight(2);
  rectMode(CENTER);
  ellipseMode(CENTER);
  background(#f29561);

//cloud 1
  stroke(0,0);
  fill(255,255,255,150);
  rect(cl1+1100,cl1y,150,150,90,90,90,90);
  rect(cl1+1100,cl1y+25,250,100,75,75,75,75);
  rect(cl1+1100,cl1y,50,75,75,75,75,75);
  rect(cl1+1100,cl1y,70,65,60,60,60,60);
  rect(cl1+1100,cl1y-15,90,45,60,60,60,60);
  rect(cl1+1100,cl1y+30,115,35,60,60,60,60);

  if (swit==false){  
    if(cl1<1280){
      cl1=cl1+1;
    }
    else{
      cl1y=(int)random(150, height-150);
      swit=true;
    }
  }
  if(swit==true){
    if(cl1>1270){
      cl1=cl1-2600;
    }
    else{
      swit=false;
    }
  }



//cloud 2
  rect(cl2+200,cl2y-50,450,175,90,90,90,90);
  rect(cl2+200,cl2y+25,350,125,90,90,90,90);
  rect(cl2+190,cl2y-50,300,200,60,60,60,60);
  rect(cl2+200,cl2y,70,65,60,60,60,60);
  rect(cl2+200,cl2y-15,90,45,60,60,60,60);
  rect(cl2+200,cl2y+30,185,100,60,60,60,60);
  rect(cl2+155,cl2y-15,200,45,60,60,60,60);
  rect(cl2+160,cl2y+30,115,35,60,60,60,60);
  rect(cl2+150,cl2y+30,115,60,60,60,60,60);


  if (switc==false){  
    if(cl2<1280){
      cl2=cl2+1;
      
    }
    else{
      cl2y=(int)random(150, height-150);
      switc=true;
    }
  }
  if(switc==true){
    if(cl2>1279){
      cl2=cl2-1800;
    }
    else{
      switc=false;
    }
  }




//neck//
  stroke(0,0,0,255);
  fill(#C9CBCB);
  arc(640,725,1600,100,radians(-180),0);
  fill(50,50,50);
  rect(640,650,350,60);
  fill(#C9CBCB);
  rect(640,650,350,25);

//head//
  fill(#C9CBCB);
  rect(640,385,500,240);
  ellipse(640,275,500,500);
  stroke(0,0,0,0);
  rect(640,385,497,238);

//chin & jaw//
  stroke(0,0,0,255);
  rect(640,577.5,300,145);
  triangle(790,650,790,505,920,505);
  triangle(490,650,490,505,360,505);
  rect(905,430,30,150);
  rect(375,430,30,150);
  rect(932.5,400,25,40);
  rect(347.5,400,25,40);

//fin//
  fill(#64574E);
  triangle(640,400,620,0,660,0);

//eyes//
  stroke(0,0,0,0);
  fill(30,30,30);
  ellipse(525,242.5,120,120);
  ellipse(755,242.5,120,120);
  fill(#A4856F);
  ellipse(525,250,100,100);
  ellipse(755,250,100,100);
  fill(253,254,206,40);
  ellipse(525,250,80,80);
  ellipse(755,250,80,80);
  fill(253,254,206,75);
  ellipse(525,250,50,50);
  ellipse(755,250,50,50);
  fill(253,254,206,125);
  ellipse(755,250,cs,cs);
  ellipse(525,250,cs,cs);
  fill(253,254,206,200);
  ellipse(525,250,30,30);
  ellipse(755,250,30,30);

  
  //frameCount % 60 == 0 checks if 60 frames has passed by checking 60/60
  
   if(frameCount%1/2==0){
     if (swi==false){  
       if(cs<100){
         cs=cs+5;
       }
       else{
         fill(255);
         ellipse(525,250,20,20);
         ellipse(755,250,20,20);
         wait=wait+1;
         if(wait==100){
           swi=true;
           wait2=0;
       }
     }
   }
   
   if(swi==true){
     if(frameCount%2==0){
       if(cs>36){
         cs=cs-5;
       }
         else{
           wait2=wait2+1;
           if(wait2==100){
           swi=false;
           wait=0;
           }
         }
       }
     }
  }
}
