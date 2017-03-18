package regular;

public class FinalDemo
{
	public void display()
	{
		System.out.println("Display Method:");
	}
	public static void main(String args[]){
		FinalDemo fd = new FinalDemo();
		FinalEx fe = new FinalEx();
		fe.add();
		fd.display();
		fe.display();
		System.out.println("addition is:" +fe.add());
	}
}

