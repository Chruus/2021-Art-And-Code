PImage img;

void setup()     
{      
  img = loadImage("fwcdlogo.jpg");
  size(800,800);
}

void draw() 
{
  image(img, 0, 0);
}

void mouseClicked()
{
    img.loadPixels();
    for(int i=0;i<img.pixels.length; i++)
    {
        color c= img.pixels[i];
        int red = (int) red(c);
        int green = (int) green(c);
        int blue = (int) blue(c);
        // make three containers to store the red, green, and blue
        //values from the color variable called c
        int avg = average(red,green,blue);
        //make a fourth container called avg
        //to remember the average, set this container to
        //the result returned when you call your average method. (capture it)
         
        
        
         img.pixels[i] = color(avg,avg,avg);
    }
    img.updatePixels();
}
Integer average(int val1, int val2, int val3){
  int average;
  average=(val1+val2+val3)/3;
  return average;
}
//write the  average method HERE
