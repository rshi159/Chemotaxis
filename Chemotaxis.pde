//done
Bacteria [] colony; //declare bacteria variables here
Eater [] group;   
int prey;
//Bacteria bob;
 void setup()   
 { 
 	size(720,720);
 	colony = new Bacteria[30];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	group = new Eater[2];
 	for(int j = 0; j < group.length; j++)
 	{
 		group[j] = new Eater();
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	if(frameCount%3 == 0)
 		background(205);
 	for(int i = 0; i < colony.length; i++)
 	{
  		colony[i].show();
 		colony[i].move();
 		colony[i].die();
 		colony[i].rebirth();//move and show the bacteria   
 	}
 	for(int j = 0; j < group.length; j++)
 	{
 		group[j].show();
 		group[j].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, deadX, deadY, living;
 	color myColor;
 	boolean life,resurrect;//lots of java!   
 	Bacteria()
 	{
 		living = 1;
 		life = true;
 		myX = 360;
 		myY = 360;
 		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	}
 	void move()
 	{
 		if(life == true)
 		{
			myX = myX + (int)(Math.random()*20-10);
	 		myY = myY + (int)(Math.random()*20-10);
	 		if(myX >= 720)
	 			myX = myX - 30;
	 		else if(myX <= 0)
	 			myX = myX + 30;
	 		else if(myY >= 720)
	 			myY = myY -30;
	 		else if(myY <= 0)
	 			myY = myY + 30;
 		}
 		else if(life == false)
 		{
 			deadX = myX;
 			deadY = myY;
 		}
 	}
 	void rebirth()
 	{
 		if (mousePressed == true)
 		{
 	 	living = 1;			
	 	life = true;
 		}
 	}
 	void show()
 	{
 		if(life == true)
 		{
 			fill(myColor);
 			ellipse(myX,myY,15,15);
 		}
 		else if(life == false)
 		{
 			fill(255, 0, 0);
 			ellipse(deadX, deadY, 15,15);
 		}
 	}
 	void die()
 	{
 		if (group[1].myX <= myX + 15 && group[1].myX >= myX - 15)
 		{
 			if (group[1].myY <= myY + 15 && group[1].myY >= myY - 15)
 				living = 0;
 		}
 		
 		if (group[0].myX <= myX + 15 && group[0].myX >= myX - 15)
 		{
 			if (group[0].myY <= myY + 15 && group[0].myY >= myY -15)
 				living = 0;
 		}
 		if (living == 0)
 		{
 			life = false;
 		}
 	}
 }
 
 void mousePressed()
 	{
 		if(mousePressed == true)
 		{
 			prey = (int)(Math.random()*30);
 		}
 	}
 
 
 class Eater
 	{
 	int myX, myY, myColor;
 	Eater()
 	{
 		myX = 20;
 		myY = 20;
 		myColor = 190;
 	}
 	void move()
	{
		if(myX >= colony[prey].myX)
			myX = myX + (int)(Math.random()*15-10);
		else if(myX < colony[prey].myX)
			myX = myX - (int)(Math.random()*15-10);
		if(myY >= colony[prey].myY)
			myY = myY + (int)(Math.random()*15-10);
		else if(myY < colony[prey].myY)
			myY = myY - (int)(Math.random()*15-10);			
		
 	}
 	void show()
 		{
 			fill(myColor,0,0);
 			ellipse(myX, myY, 25,25);
 		}
 	}   