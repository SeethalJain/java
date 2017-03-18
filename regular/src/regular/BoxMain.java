package regular;
import java.util.Scanner;

class BoxMain
{
	public static void main(String arg[])
	{
		Scanner s = new Scanner(System.in);
		
	Box obj=new Box();

	int Width = s.nextInt();
	int Height = s.nextInt();
	int Depth = s.nextInt();
	
	System.out.println("Width:"+obj.getWidth());
	System.out.println("Height:"+obj.getHeight());
	System.out.println("Depth:"+obj.getDepth());

	System.out.println("Volume of Box :"+obj.volume());

	}
}
