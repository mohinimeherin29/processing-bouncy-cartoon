//MOHINI MEHERIN
//This code creates a cartoon whices moves in each side and chane it's background,eye and mouth color according to the command.


float xPos;
float yPos;
float dx;
float dy;
color paint;//varible to color the background
color eyecolor;//variable to color the eyes
color mouthcolor;// variable to color mouth

void setup(){
  size(600,600);//size of the canvas
  xPos=300;//initial x position of the cartoon
  yPos=300;//initial y position of the cartoon
  dx=random(-2,2);//random x direction for movement
  dy=random(-2,2);//random y direction for movement
  paint=color(255);//white
  eyecolor=color(0);//black
  mouthcolor=color(188,143,143);//rosy brown)
}
  void draw(){
    background(paint);// white background
    
    //face of the cartoon
    fill(255,255,240);//ivory
    ellipse(xPos,yPos,230,250);// oval shape body
    
    //ears of the cartoon
    fill(255,255,240);//ivory
    ellipse(xPos-30,yPos-150,40,70);//left ear
    ellipse(xPos+30,yPos-150,40,70);//right ear
     
    //eyes of the cartoon
    fill (eyecolor);
    ellipse(xPos-50,yPos-50,20,50);//left eye
    ellipse(xPos+50,yPos-50,20,50);//right eye
  
   // mouth of the cartoon
   fill(mouthcolor);//rosybrown
   ellipse(xPos,yPos+50,20,30);
  
  //blushes
  fill(188,143,143);// rosybrown
  ellipse(xPos-70,yPos+5,30,10);//left blush
  ellipse(xPos+70,yPos+5,30,10);// right blush
   
  //new position
  xPos +=dx;
  yPos +=dy;
  
  //changing directions in x pos
  if(xPos>width-115 || xPos<115)//oval width/2=115
 { dx=-dx;}
 
 //changing direction in ypos 
     if(yPos>height-125 ||yPos<125)// half height of the oval  125
 {dy=-dy;}
 
 
 //changing eye colors if height is greater than 350
 if(yPos>350){
   eyecolor=color(139,69,19);//brown
 }
  else{
     eyecolor=color(0);}
     
   // hands of the cartoon  
     stroke(0);
     strokeWeight(2);
     line(xPos-115,yPos+10,xPos-170,yPos+50);// left hand
    line(xPos+115,yPos+10,xPos+170,yPos+50);//right hand 
   
    // legs of the cartoon
    line(xPos-70,yPos+200,xPos-50,yPos+110);//left leg
    line(xPos-70,yPos+200,xPos-85,yPos+200);
    line(xPos+70,yPos+200,xPos+50,yPos+110);//right leg
    line(xPos+70,yPos+200,xPos+85,yPos+200);
    
 }
 
 //changes the background color to pink 
 void keyPressed(){
   if(key=='T'||key=='t')
   { paint=color(255,182,193);}
 }
  
    //changes the direction of the cartoon according to mouse
 void mouseDragged(){
   xPos=mouseX;
   yPos=mouseY;}
  
   // changes the color of mouth when mouse is pressed 
   void mousePressed(){
     mouthcolor=color(255);}

    
