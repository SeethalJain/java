import java.util.*;
public class SetCollDemo {
	public static void main(String args[]){
		HashSet hs = new HashSet();
		hs.add("SJ");
		hs.add("SJ");					//duplicate not allowed
		hs.add("Sskjs");
		hs.add("Sunny");
		System.out.println(hs);
	}
}
