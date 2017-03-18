
public class ToString {
 String sid,sname;
 public ToString(String id, String name){
	 this.sid=id;
	 this.sname=name;
 }
 public String toString(){
	 return "SID:" +sid+ "     SNAME:" +sname;
 }
 public static void main(String args[]){
	 ToString ts = new ToString("S1001","Sj");
	 System.out.println(ts);					//without adding tostring mtd d o/p is :ToString@15db9742
 }
}
