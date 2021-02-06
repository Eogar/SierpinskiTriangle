public void setup()
{
 size(400,400);
 background(0);
}
public void draw()
{
 sierpinski(0,400,400);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len)
{
 if(len<20){
   triangle(x,y,x + len,y,x+len/2,y-len);
 }
  else {
    stroke(0,0,100);
    sierpinski(x,y,len/2);
    stroke(0,200,100);
    sierpinski(x+len/2,y,len/2);
    stroke(25,0,100);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
