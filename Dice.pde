int i = 0;
int j = 0;
int numDie = 0;
Die one;
void setup()
{

	size(1710, 1000);
	background(50, 50, 50);
	noLoop();
	one = new Die(0+i,0+j);
}
void draw()
{
	for (int i = 0; i < 1500; i +=8) {
		for (int j = 0; j <1000; j+=8)
		{
			
			one = new Die(0+i,0+j);
			one.roll();
			one.show();
			numDie++;
		}
	}
	strokeWeight(30);
	fill(255);
	text("Number of dice:" + numDie, 850, 500,CENTER);	
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int xDice, yDice, dotDice;
	
	Die(int x, int y) //constructor
	{
		xDice = x;
		yDice = y;
	}
	void roll()
	{
		dotDice =(int)(Math.random()*6)+1;
	}
	void show()
	{
		fill(random(0,255),random(0,255),random(0,255));
		noStroke();
		rect(xDice, yDice, 8, 8);
		if (dotDice == 1)
		{
			stroke(0);
			fill(0);
			ellipse(xDice+4, yDice +4, 1, 1);
		} else if (dotDice == 2) 
		{
			stroke(0);
			fill(0);
			ellipse(xDice+2, yDice +6, 1, 1);
			ellipse(xDice+6, yDice +2, 1, 1);		
		}
		 else if (dotDice == 3) 
		{
			stroke(0);
			fill(0);
			ellipse(xDice+2, yDice +2, 1, 1);
			ellipse(xDice+4, yDice +4, 1, 1);	
			ellipse(xDice+6, yDice +6, 1, 1);	

		}
		 else if (dotDice == 4) 
		{
			stroke(0);
			fill(0);
			ellipse(xDice+2, yDice +2, 1, 1);
			ellipse(xDice+2, yDice +6, 1, 1);
			ellipse(xDice+6, yDice+2, 1, 1);
			ellipse(xDice+6, yDice +6, 1, 1);	

		}
		 else if (dotDice == 5) 
		{
			stroke(0);
			fill(0);
			ellipse(xDice+2, yDice +2, 1, 1);
			ellipse(xDice+2, yDice +6, 1, 1);
			ellipse(xDice+6, yDice+2, 1, 1);
			ellipse(xDice+6, yDice +6, 1, 1);	
			ellipse(xDice+4, yDice +4, 1, 1);	

		}
		 else
		{
			stroke(0);
			fill(0);
			ellipse(xDice+2, yDice +1, 1, 1);
			ellipse(xDice+2, yDice +7, 1, 1);
			ellipse(xDice+6, yDice+1, 1, 1);
			ellipse(xDice+6, yDice +7, 1, 1);
			ellipse(xDice+2, yDice+4, 1, 1);
			ellipse(xDice+6, yDice +4, 1, 1);	

		}

	}
}
