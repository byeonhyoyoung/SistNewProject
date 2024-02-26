package prac0226;

public class for_01 {

	public static void main(String[] args) {
		// while문과 for문 비교
		
//		System.out.println("<<while문으로 10~0 출력>>");
//		
//		int a = 10;
//		
//		while(a>=0)
//		{
//			System.out.print(a-- + " ");
//		}
//		
//		System.out.println();
//	System.out.println("<<while문으로 0~20 출력>>");
//		int b = 0;
//		while(b<=20)
//		{
//			System.out.print(b++ + " ");
//		}
//		
//		System.out.println();
//		System.out.println("=====================================================");
//		System.out.println("<<for문으로 10~0 출력>>");
//		
//		
//		for(int c=10; c>=0; c--)
//		{
//			System.out.print(c+" ");
//		}
//		System.out.println();
//		
//		System.out.println("<<for문 1~10 출력 후 종료");
//		for(int d=1; d<=10; d++)
//		
//			System.out.print(d+ "  ");
//			System.out.println("종료하겠습니다.");
//		
//			
//		System.out.println("<<while문 1~10 종료>>");
//		
//		int n = 1;
//		while(true)
//		{
//			System.out.print(n++ +" ");
//			if(n>10)
//				break;
//		}
//		System.out.println("종료하겠습니다.");
		
		
		
		int n = 1;
		
		System.out.println("<<while문 결과>>");
		while(n<5)
		{
			System.out.println(n++); //출력 후 증가 1 2 3 4
			
		}
		
		System.out.println("<<do~while문 결과>>");
		
		n = 1;
		
		do {
			System.out.println(n++);
			
		}while(n<=5);

	}

}
