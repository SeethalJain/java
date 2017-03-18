import java.util.*;
public class TreeSetDemo{
		public static void main(String args[]){
			TreeSet hs = new TreeSet();
			hs.add("SJ");
			hs.add("SJ");					//duplicate not allowed
			hs.add("Sskjs");				//sync order
			
			hs.add("Sunny");
			System.out.println(hs);
		
	}

}
