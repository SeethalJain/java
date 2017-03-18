import java.util.*;
public class Mapdemo {
		public static void main(String args[]){
			HashMap<String,String> hm = new HashMap<String,String>();
			hm.put("E1001","SJ,50000,chn");
			hm.put("E1002","JAIN,60000,bang");
			hm.put("E1003","MR,70000,hyd");
			
			Set<String> keys = hm.keySet();
			
			for(String key:keys){
				System.out.print("EMPLOYEE ID:" +key+"  ");
				
				String value = hm.get(key);
				String empvalues[] = value.split(",");
				
				System.out.print("EMPLOYEE NAME:" +empvalues[0]+"  ");
				System.out.print("EMPLOYEE ADDR:" +empvalues[1]+"  ");
				System.out.println();
			}
		}
}
