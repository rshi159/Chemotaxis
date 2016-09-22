Bacteria [] colony; //declare bacteria variables here
Eater [] group;   
int prey;
//Bacteria bob;
 void setup()   
 { 
 	size(720,720);
 	colony = new Bacteria[10];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	group = new Eater[10];
 	for(int i = 0; j < group.length; j++)
 	{
 		group[j] = new Eater();
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	if(frameCount%25 == 0)
 		background(205);
 	for(int i = 0; i < colony.length; i++)
 	{
  		colony[i].show();
 		colony[i].move();//move and show the bacteria   
 		group[j].show();
 		group[j].move();
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
 		if(myX >= 720)
 			myX = myX - 30;
 		else if(myX <= 0)
 			myX = myX + 30;
 		else if(myY >= 720)
 			myY = myY -30;
 		else if(myY <= 0)
 			myY = myY + 30;
 	}
 	void show()
 	{
 		fill(230);
 		ellipse(myX,myY,15,15);
 	}
 	void mosePressed()
 	{
 		int prey = (int)Math.random()*11;
 	}
 	class Eater
 	{
 		int myX. myY, myColor;
 		Eater()
 		{
 			myX = 20;
 			myY = 20;
 			myColor = 190;
 		}
 		void move()
 		{
 			if(myX >= colony[prey].myX)
 				myX = myX + (int)(Math.random*14-10);
 			else if(myX < colony[prey].myX)
 				myX = myX - (int)(Math.random*14-10);

 			
 		}
 		void show()
 			{
 				fill(myColor,0,0);
 				ellipse(myX, myY, 25,25);
 			}

 	}

 }    