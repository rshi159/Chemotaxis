Bacteria bob; //declare bacteria variables here   
 void setup()   
 {     
 	size(720.720);
 	bacteria bob = new Bacteria();
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
  	bob.show();
 	bob.move();//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;//lots of java!   
 	Bacteria()
 	{
 		myX = 360;
 		myY = 360;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*11-5);
 		myY = myY + (int)(Math.random()*11-5);
 	}
 	void show()
 	{
 		fill(230);
 		ellipse(myX,myY,15,15);
 	}
 }    