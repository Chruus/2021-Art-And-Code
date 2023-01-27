class ArjunVasudevanFish extends AnimatedObject
{
    int xPos, yPos;
    Seekers[] seekers;
    Seekers seekers1;
    Seekers seekers2;
    Seekers seekers3;
    Seeker control;
    int smallest,largest;
    int currentBreathe=0;
    boolean shrinking=true, active=true; //getting smaller
    int radius;
    boolean seeking=false;
    //int angle,radius;


    float beginX;  // Initial x-coordinate
    float beginY;  // Initial y-coordinate
    float endX;   // Final x-coordinate
    float endY;  // Final y-coordinate
    float distX;          // X-axis distance to move
    float distY;          // Y-axis distance to move
    float exponent = 3;   // Determines the curve
           // Current y-coordinate
    float step = 0.005;    // Size of each step along the path
    float pct = 0.0;      // Percentage traveled (0.0 to 1.0)

    ArjunVasudevanFish(int xPos_, int yPos_, int size_, int radius_, int xOffset_, int yOffset_, int amount)
    {
        xPos=xPos_;
        yPos=yPos_;
        radius=radius_;
        //angle=0;
        //radius=80;
        
        beginX=xPos_;
        beginY=yPos_;
        seekers = new Seekers[4];
        for(int i = 0; i<4; i++)
        {
            seekers[i]= new Seekers(size_, radius_, xOffset_, yOffset_ ,amount, int(random(170,242)),int(random(170,242)), int(random(170,242)));
        }
        seekers1 = new Seekers(size_, radius_, xOffset_, yOffset_ ,amount, int(random(170,242)),int(random(10)), int(random(10)));
       
        control = new Seeker(int(6*PI),100,width/2,height/2,15,0,0,0);
        
        
        
        
        
        //formula for max amnt
        //(radius*2/(SIZE/PI)) = max for when size is 30
        smallest=(radius)/(size_/amount);
        smallest=60;
        largest=radius+50;
        
        
        
    }
    int startTime=0;
    int startTime2=0;
    int currentTime=millis();
    PVector[] locations;
    void move()
    {
        if(currentTime-startTime2>6000)
        {
            
            startTime2=millis();
            pct = 0.0;
            beginX = xPos;
            beginY = yPos;
            endX = random(100,1800);
            endY = random(100,800);
            distX = endX - beginX;
            distY = endY - beginY;
        }
        pct += step;
        if (pct < 1.0) 
        {
            xPos = int(beginX + (pct * distX));
            yPos = int(beginY + (pow(pct, exponent) * distY));
        }
    }
    void move(PVector[] locations)
    {
        this.locations=locations;
        this.move();
    }
    void display()
    {
        
        rectMode(CENTER);
        //ellipse(xPos,yPos,20,20);
        
        control.update(seekers1.getAngle(),this.getX(),this.getY());
        control.updateRadius(control.breathe(smallest,largest));
        //angle+=3;
       
        //float circleX=cos(radians(angle));
        //float circleY=sin(radians(angle));
        //circleX*=radius;
        //circleY*=radius;
        //circleX+=xPos;
        //circleY+=yPos;
        //ellipse(circleX,circleY,30,30);
        //println(angle,circleX,circleY);
        seekers1.update(this.getX(),this.getY());
        for(int i = seekers.length-1; i>=0; i--)
        {
            seekers[i].update(this.getX(),this.getY());
            seekers[i].display();
            seekers[i].breathe(smallest,largest);
        }
   
        seekers1.breathe(smallest,largest);
      
        
        if(seeking)
        {
            seekers1.seekAll(locations);
            
            for(int i = seekers.length-1; i>=0; i--)
            {
                seekers[i].seekAll(locations);
             
            }
        }

        else
        {
            seekers1.stopSeekAll(control.radius);
            for(int i = seekers.length-1; i>=0; i--)
            {
                seekers[i].stopSeekAll(control.radius);
             
            }
        }
        currentTime=millis();
        {
            if(currentTime-startTime>1000)
            {
                if(keyPressed && key == 's')
                {
                    seeking=!seeking;
                }
                startTime=millis();
            }
        }
        
        
       
        //println(active,this.isReady());

        

    }
    
    int getX()
    {
        return xPos;
    }
    int getY()
    {
        return yPos;
    }
}