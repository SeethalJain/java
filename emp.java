class emp{
	protected:
		int salary;
		int a=1000;
		int b=2000;
	public:
		void calculate(){
			salary=a+b;
			System.out.println("salary is:"+salary);
	}
}
public static void main(String args[]){
	emp e;
	e.calculate();
}