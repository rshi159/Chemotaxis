Bacteria [] colony; //declare bacteria variables here   
Bacteria bob;
 void setup()   
 { 
 	size(720,720);
 	frameRate(1);
 	colony = new Bacteria[10];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	for(int i = 0; i < colony.length; i++)
 	{
  		colony[i].show();
 		colony[i].move();//move and show the bacteria   
 	}
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
 		myX = myX + (int)(Math.random()*10-5);
 		myY = myY + (int)(Math.random()*10-5);
 		System.out.print(colony[5].myX);
 	}
 	void show()
 	{
 		fill(230);
 		ellipse(myX,myY,15,15);
 	}

 }    