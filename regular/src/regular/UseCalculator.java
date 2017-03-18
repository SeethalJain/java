package regular;

public class UseCalculator implements Calculator{
public int add(int a, int b){
	return a+b;
}
public int mul(int a, int b){
	return a*b;
}
public void show(){
	System.out.println("Addition of a n b is:" +add(10,30));
	System.out.println("Multiplication of a n b is:" +mul(10,30));
}
public static void main(String args[]){
	new UseCalculator().show();
}
}
